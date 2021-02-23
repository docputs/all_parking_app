import 'package:all_parking/features/parking/data/dtos/parked_vehicle_dto.dart';
import 'package:all_parking/features/parking/data/dtos/parking_lot_dto.dart';
import 'package:all_parking/features/parking/domain/entities/parked_vehicle.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

import '../../core/errors/parking_failure.dart';
import '../../../../utils/firebase_helpers.dart';
import '../../domain/entities/manager.dart';
import '../../domain/entities/parking_lot.dart';
import '../../domain/repositories/i_parking_lot_repository.dart';

@LazySingleton(as: IParkingLotRepository)
class ParkingLotRepository implements IParkingLotRepository {
  final FirebaseFirestore _firestore;

  const ParkingLotRepository(this._firestore) : assert(_firestore != null);

  Future<Either<ParkingFailure, Unit>> _handleExceptions(Future<void> Function() function) async {
    try {
      await function();
      return right(unit);
    } on FirebaseException catch (e) {
      print(e);
      return left(ParkingFailure.serverFailure());
    } catch (e) {
      print(e);
      return left(ParkingFailure.unknownFailure());
    }
  }

  @override
  Future<Either<ParkingFailure, Unit>> create(ParkingLot parkingLot) {
    return _handleExceptions(() async {
      final parkingLotDTO = ParkingLotDTO.fromDomain(parkingLot);
      await _firestore.parkingLotCollection.doc(parkingLotDTO.id).set(parkingLotDTO.toJson());
    });
  }

  @override
  Future<Either<ParkingFailure, Unit>> delete(ParkingLot parkingLot) {
    return _handleExceptions(() async => await _firestore.parkingLotCollection.doc(parkingLot.id).delete());
  }

  @override
  Future<Either<ParkingFailure, Unit>> update(ParkingLot parkingLot) {
    return _handleExceptions(() async {
      final parkingLotDTO = ParkingLotDTO.fromDomain(parkingLot);
      await _firestore.parkingLotCollection.doc(parkingLotDTO.id).update(parkingLotDTO.toJson());
    });
  }

  @override
  Future<Either<ParkingFailure, Unit>> checkInVehicle(ParkedVehicle vehicle, {@required ParkingLot parkingLot}) {
    return _handleExceptions(() async {
      final vehicleDTO = ParkedVehicleDTO.fromDomain(vehicle);
      await _firestore.parkedVehiclesCollection(parkingLot.id).doc(vehicle.id.value).set(vehicleDTO.toJson());
    });
  }

  @override
  Future<Either<ParkingFailure, Unit>> checkOutVehicle(ParkedVehicle vehicle, {@required ParkingLot parkingLot}) {
    return _handleExceptions(() async {
      final assignedCheckOut = {'checkOut': DateTime.now(), 'isActive': false};
      await _firestore.parkedVehiclesCollection(parkingLot.id).doc(vehicle.id.value).update(assignedCheckOut);
    });
  }

  @override
  Future<Either<ParkingFailure, List<ParkingLot>>> fetchAll(Manager manager) async {
    try {
      if (manager.parkingLots.isEmpty()) return right(List.empty());
      final snapshot = await _firestore.parkingLotCollection.where(FieldPath.documentId, whereIn: manager.parkingLots.asList()).get();
      return right(snapshot.docs.map((doc) => ParkingLotDTO.fromFirestore(doc).toDomain()).toList());
    } on FirebaseException catch (e) {
      print(e);
      return left(ParkingFailure.serverFailure());
    } catch (e) {
      print(e);
      return left(ParkingFailure.unknownFailure());
    }
  }

  @override
  Stream<Either<ParkingFailure, ParkingLot>> watchById(String id) {
    return _firestore.parkingLotCollection.doc(id).snapshots().map((doc) {
      if (doc.exists) return right(ParkingLotDTO.fromFirestore(doc).toDomain());
      return left(ParkingFailure.parkingLotNotFound());
    })
      ..onErrorReturnWith((error) {
        print(error);
        return left(ParkingFailure.serverFailure());
      });
  }

  @override
  Stream<Either<ParkingFailure, KtList<ParkingLot>>> watchAll(Manager manager) async* {
    final parkingLots = manager.parkingLots.asList();
    if (parkingLots.isEmpty)
      yield right(KtList.empty());
    else
      yield* _firestore.parkingLotCollection
          .where(FieldPath.documentId, whereIn: parkingLots)
          .snapshots()
          .map((snapshot) => right(snapshot.docs.map((doc) => ParkingLotDTO.fromFirestore(doc).toDomain()).toImmutableList()))
            ..onErrorReturnWith((error) {
              print('ERROR: $error');
              return left(ParkingFailure.serverFailure());
            });
  }
}
