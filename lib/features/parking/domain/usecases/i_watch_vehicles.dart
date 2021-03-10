import 'package:dartz/dartz.dart';

import '../../core/errors/parking_failure.dart';
import '../../data/models/order_by.dart';
import '../entities/parked_vehicles_list.dart';
import '../entities/parking_lot.dart';
import '../repositories/i_parking_lot_repository.dart';

abstract class IWatchVehicles {
  IParkingLotRepository get _repository;

  Stream<Either<ParkingFailure, ParkedVehiclesList>> call(ParkingLot parkingLot, [OrderBy orderBy]);
}
