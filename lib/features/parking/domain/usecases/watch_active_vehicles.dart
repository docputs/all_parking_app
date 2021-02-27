import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../core/errors/parking_failure.dart';
import '../../data/models/order_by.dart';
import '../entities/parked_vehicles_list.dart';
import '../entities/parking_lot.dart';
import '../repositories/i_parking_lot_repository.dart';
import 'i_watch_vehicles.dart';

@lazySingleton
class WatchActiveVehicles implements IWatchVehicles {
  final IParkingLotRepository _parkingLotRepository;

  const WatchActiveVehicles(this._parkingLotRepository);

  Stream<Either<ParkingFailure, ActiveParkedVehicles>> call(ParkingLot parkingLot, [OrderBy orderBy]) {
    return _parkingLotRepository.watchActiveVehicles(parkingLot, orderBy);
  }
}
