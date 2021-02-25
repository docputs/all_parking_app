import 'package:all_parking/features/parking/core/errors/parking_failure.dart';
import 'package:all_parking/features/parking/data/models/order_by.dart';
import 'package:all_parking/features/parking/domain/entities/parked_vehicles_list.dart';
import 'package:all_parking/features/parking/domain/entities/parking_lot.dart';
import 'package:all_parking/features/parking/domain/repositories/i_parking_lot_repository.dart';
import 'package:dartz/dartz.dart';

abstract class IWatchVehicles {
  IParkingLotRepository get _repository;

  Stream<Either<ParkingFailure, ParkedVehiclesList>> call(ParkingLot parkingLot, [OrderBy orderBy]);
}
