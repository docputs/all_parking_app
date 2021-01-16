import 'package:dartz/dartz.dart';

import '../../core/errors/parking_failure.dart';
import '../entities/parked_vehicle.dart';
import '../entities/parking_lot.dart';

abstract class IParkingLotRepository {
  Future<Either<ParkingFailure, List<ParkingLot>>> fetchAll();
  Future<Either<ParkingFailure, Unit>> create(ParkingLot parkingLot);
  Future<Either<ParkingFailure, Unit>> delete();
  Future<Either<ParkingFailure, Unit>> edit(String id);
  Future<Either<ParkingFailure, Unit>> checkInVehicle(ParkedVehicle vehicle);
  Future<Either<ParkingFailure, Unit>> checkOutVehicle(ParkedVehicle vehicle);
}
