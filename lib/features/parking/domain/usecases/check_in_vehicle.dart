import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../core/errors/parking_failure.dart';
import '../../presentation/current_parking_lot.dart';
import '../entities/parked_vehicle.dart';
import '../repositories/i_parking_lot_repository.dart';

@lazySingleton
class CheckInVehicle {
  final IParkingLotRepository _parkingLotRepository;
  final CurrentParkingLot _currentParkingLot;

  CheckInVehicle(this._parkingLotRepository, this._currentParkingLot) : assert(_parkingLotRepository != null);

  Future<Either<ParkingFailure, Unit>> call(ParkedVehicle vehicle) {
    return _currentParkingLot.value.fold(
      () async => left(ParkingFailure.noCurrentParkingLot()),
      (parkingLot) => _parkingLotRepository.checkInVehicle(vehicle, parkingLot: parkingLot),
    );
  }
}
