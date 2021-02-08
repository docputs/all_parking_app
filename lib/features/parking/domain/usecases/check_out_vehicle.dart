import 'package:all_parking/features/parking/core/errors/parking_failure.dart';
import 'package:all_parking/features/parking/domain/entities/parked_vehicle.dart';
import 'package:all_parking/features/parking/domain/repositories/i_parking_lot_repository.dart';
import 'package:all_parking/features/parking/presentation/current_parking_lot.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

@lazySingleton
class CheckOutVehicle {
  final IParkingLotRepository _parkingLotRepository;
  final CurrentParkingLot _currentParkingLot;

  const CheckOutVehicle(this._parkingLotRepository, this._currentParkingLot) : assert(_parkingLotRepository != null);

  Future<Either<ParkingFailure, Unit>> call(ParkedVehicle vehicle) async {
    return _currentParkingLot.value.fold(
      () async => left(ParkingFailure.noCurrentParkingLot()),
      (parkingLot) {
        final newParkedVehicles = parkingLot.parkedVehicles.map((element) {
          if (element.id == vehicle.id) return element.copyWith(isActive: false, checkOut: DateTime.now());
        });
        final newParkingLot = parkingLot.copyWith(parkedVehicles: newParkedVehicles);
        return _parkingLotRepository.update(newParkingLot);
      },
    );
  }
}
