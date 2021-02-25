import 'package:all_parking/features/parking/core/errors/parking_failure.dart';
import 'package:all_parking/features/parking/data/models/order_by.dart';
import 'package:all_parking/features/parking/domain/entities/parked_vehicles_list.dart';
import 'package:all_parking/features/parking/domain/entities/parking_lot.dart';
import 'package:all_parking/features/parking/domain/repositories/i_parking_lot_repository.dart';
import 'package:all_parking/features/parking/domain/usecases/i_watch_vehicles.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class WatchActiveVehicles implements IWatchVehicles {
  final IParkingLotRepository _parkingLotRepository;

  const WatchActiveVehicles(this._parkingLotRepository);

  Stream<Either<ParkingFailure, ActiveParkedVehicles>> call(ParkingLot parkingLot, [OrderBy orderBy]) {
    return _parkingLotRepository.watchActiveVehicles(parkingLot, orderBy);
  }
}
