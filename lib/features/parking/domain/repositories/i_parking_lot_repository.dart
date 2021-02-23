import 'package:all_parking/features/parking/domain/entities/parked_vehicle.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:kt_dart/kt.dart';

import '../../core/errors/parking_failure.dart';
import '../entities/manager.dart';
import '../entities/parking_lot.dart';

abstract class IParkingLotRepository {
  Future<Either<ParkingFailure, List<ParkingLot>>> fetchAll(Manager manager);
  Stream<Either<ParkingFailure, ParkingLot>> watchById(String id);
  Stream<Either<ParkingFailure, KtList<ParkingLot>>> watchAll(Manager manager);
  Future<Either<ParkingFailure, Unit>> create(ParkingLot parkingLot);
  Future<Either<ParkingFailure, Unit>> delete(ParkingLot parkingLot);
  Future<Either<ParkingFailure, Unit>> update(ParkingLot parkingLot);
  Future<Either<ParkingFailure, Unit>> checkInVehicle(ParkedVehicle vehicle, {@required ParkingLot parkingLot});
  Future<Either<ParkingFailure, Unit>> checkOutVehicle(ParkedVehicle vehicle, {@required ParkingLot parkingLot});

}
