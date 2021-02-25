import 'package:all_parking/features/parking/data/models/order_by.dart';
import 'package:all_parking/features/parking/domain/entities/parked_vehicle.dart';
import 'package:all_parking/features/parking/domain/entities/parked_vehicles_list.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:kt_dart/kt.dart';

import '../../core/errors/parking_failure.dart';
import '../entities/manager.dart';
import '../entities/parking_lot.dart';

abstract class IParkingLotRepository {
  Future<Either<ParkingFailure, KtList<ParkingLot>>> fetchParkingLots(Manager manager);
  Stream<Either<ParkingFailure, ParkingLot>> watchById(ParkingLot parkingLot);
  Stream<Either<ParkingFailure, ActiveParkedVehicles>> watchActiveVehicles(ParkingLot parkingLot, [OrderBy orderBy]);
  Stream<Either<ParkingFailure, InactiveParkedVehicles>> watchInactiveVehicles(ParkingLot parkingLot, [OrderBy orderBy]);
  Future<Either<ParkingFailure, Unit>> create(ParkingLot parkingLot);
  Future<Either<ParkingFailure, Unit>> delete(ParkingLot parkingLot);
  Future<Either<ParkingFailure, Unit>> update(ParkingLot parkingLot);
  Future<Either<ParkingFailure, Unit>> checkInVehicle(ParkedVehicle vehicle, {@required ParkingLot parkingLot});
  Future<Either<ParkingFailure, Unit>> checkOutVehicle(ParkedVehicle vehicle, {@required ParkingLot parkingLot});
}
