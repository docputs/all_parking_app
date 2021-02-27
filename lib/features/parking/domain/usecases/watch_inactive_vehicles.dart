import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../core/errors/parking_failure.dart';
import '../../data/models/order_by.dart';
import '../entities/parked_vehicles_list.dart';
import '../entities/parking_lot.dart';
import '../repositories/i_parking_lot_repository.dart';
import 'i_watch_vehicles.dart';

@lazySingleton
class WatchInactiveVehicles implements IWatchVehicles {
  final IParkingLotRepository _parkingLotRepository;

  const WatchInactiveVehicles(this._parkingLotRepository);

  Stream<Either<ParkingFailure, ParkedVehiclesList>> call(ParkingLot parkingLot, [OrderBy orderBy]) {
    return _parkingLotRepository.watchInactiveVehicles(parkingLot, orderBy);
  }
}
