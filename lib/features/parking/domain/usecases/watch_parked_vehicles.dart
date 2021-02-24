import 'package:all_parking/features/parking/core/errors/parking_failure.dart';
import 'package:all_parking/features/parking/domain/entities/parked_vehicle.dart';
import 'package:all_parking/features/parking/domain/entities/parking_lot.dart';
import 'package:all_parking/features/parking/domain/repositories/i_parking_lot_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

@lazySingleton
class WatchParkedVehicles {
  final IParkingLotRepository _parkingLotRepository;

  const WatchParkedVehicles(this._parkingLotRepository);

  Stream<Either<ParkingFailure, KtList<ParkedVehicle>>> call(ParkingLot parkingLot) {
    return _parkingLotRepository.watchAllVehicles(parkingLot);
  }
}
