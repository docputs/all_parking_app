import 'package:all_parking/features/parking/data/models/parking_lot_dto.dart';
import 'package:all_parking/res/messages.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

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
      return left(const ParkingFailure.serverFailure(Messages.serverFailure));
    } catch (e) {
      print(e);
      return left(const ParkingFailure.unknownFailure(Messages.unknownFailure));
    }
  }

  @override
  Future<Either<ParkingFailure, Unit>> delete() {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Either<ParkingFailure, Unit>> edit(String id) {
    // TODO: implement edit
    throw UnimplementedError();
  }

  @override
  Future<Either<ParkingFailure, List<ParkingLot>>> fetchAll(Manager manager) {
    // TODO: implement fetchAll
    throw UnimplementedError();
  }

  @override
  Stream<Either<ParkingFailure, List<ParkingLot>>> watchAll(Manager manager) {
    // TODO: implement watchAll
    throw UnimplementedError();
  }
}
