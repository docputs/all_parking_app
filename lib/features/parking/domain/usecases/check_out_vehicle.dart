import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

import '../../core/errors/parking_failure.dart';
import '../../presentation/current_parking_lot.dart';
import '../entities/parked_vehicle.dart';
import '../repositories/i_parking_lot_repository.dart';

@lazySingleton
class CheckOutVehicle {
  final IParkingLotRepository _parkingLotRepository;
  final CurrentParkingLot _currentParkingLot;

  const CheckOutVehicle(this._parkingLotRepository, this._currentParkingLot) : assert(_parkingLotRepository != null);

  Future<Either<ParkingFailure, Unit>> call(ParkedVehicle vehicle) async {
    return _currentParkingLot.value.fold(
      () async => left(ParkingFailure.noCurrentParkingLot()),
      (parkingLot) {
        final newParkedVehicles = parkingLot.parkedVehicles.map((element) => element.id == vehicle.id ? _assignCheckOut(vehicle) : element);
        final newParkingLot = parkingLot.copyWith(parkedVehicles: newParkedVehicles);
        return _parkingLotRepository.update(newParkingLot);
      },
    );
  }

  ParkedVehicle _assignCheckOut(ParkedVehicle element) => element.copyWith(isActive: false, checkOut: DateTime.now());
}
