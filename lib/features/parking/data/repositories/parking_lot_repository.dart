import 'package:all_parking/features/parking/data/models/parking_lot_dto.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

import '../../core/errors/parking_failure.dart';
import '../../core/util/firebase_helpers.dart';
import '../../domain/entities/manager.dart';
import '../../domain/entities/parked_vehicle.dart';
import '../../domain/entities/parking_lot.dart';
import '../../domain/repositories/i_parking_lot_repository.dart';

@LazySingleton(as: IParkingLotRepository)
class ParkingLotRepository implements IParkingLotRepository {
  final FirebaseFirestore _firestore;

  const ParkingLotRepository(this._firestore) : assert(_firestore != null);

  @override
  Future<Either<ParkingFailure, Unit>> checkInVehicle(ParkedVehicle vehicle) {
    // TODO: implement checkInVehicle
    throw UnimplementedError();
  }

  @override
  Future<Either<ParkingFailure, Unit>> checkOutVehicle(ParkedVehicle vehicle) {
    // TODO: implement checkOutVehicle
    throw UnimplementedError();
  }

  @override
  Future<Either<ParkingFailure, Unit>> create(ParkingLot parkingLot) async {
    try {
      final parkingLotDTO = ParkingLotDTO.fromDomain(parkingLot);
      await _firestore.parkingLotsCollection.doc(parkingLotDTO.id).set(parkingLotDTO.toJson());
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
  Future<Either<ParkingFailure, Unit>> delete(ParkingLot parkingLot) async {
    try {
      await _firestore.parkingLotsCollection.doc(parkingLot.id).delete();
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
  Future<Either<ParkingFailure, Unit>> update(ParkingLot parkingLot) async {
    try {
      final parkingLotDTO = ParkingLotDTO.fromDomain(parkingLot);
      await _firestore.parkingLotsCollection.doc(parkingLotDTO.id).update(parkingLotDTO.toJson());
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
  Future<Either<ParkingFailure, List<ParkingLot>>> fetchAll(Manager manager) async {
    try {
      if (manager.parkingLots.isEmpty()) return right(List.empty());
      final snapshot = await _firestore.parkingLotsCollection.where(FieldPath.documentId, whereIn: manager.parkingLots.asList()).get();
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
    return _firestore.parkingLotsCollection
        .where(FieldPath.documentId, isEqualTo: id)
        .snapshots()
        .map((snapshot) => right(snapshot.docs.map((doc) => ParkingLotDTO.fromFirestore(doc).toDomain()).first))
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
      yield* _firestore.parkingLotsCollection
          .where(FieldPath.documentId, whereIn: parkingLots)
          .snapshots()
          .map((snapshot) => right(snapshot.docs.map((doc) => ParkingLotDTO.fromFirestore(doc).toDomain()).toImmutableList()))
            ..onErrorReturnWith((error) {
              print('ERROR: $error');
              return left(ParkingFailure.serverFailure());
            });
  }
}
