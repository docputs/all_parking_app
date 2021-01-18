import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../core/errors/parking_failure.dart';
import '../entities/parking_lot.dart';
import '../repositories/i_manager_repository.dart';
import '../repositories/i_parking_lot_repository.dart';

@lazySingleton
class AddParkingLot {
  final IParkingLotRepository _parkingLotRepository;
  final IManagerRepository _managerRepository;

  const AddParkingLot(this._parkingLotRepository, this._managerRepository);

  Future<Either<ParkingFailure, Unit>> call(ParkingLot parkingLot) async {
    final parkingLotEither = await _parkingLotRepository.create(parkingLot);
    return parkingLotEither.fold(
      (f) => left(f),
      (_) async {
        final managerEither = await _managerRepository.addParkingLot(parkingLot);
        return managerEither.fold(
          (f) => left(const ParkingFailure.serverFailure()),
          (_) => right(unit),
        );
      },
    );
  }
}
