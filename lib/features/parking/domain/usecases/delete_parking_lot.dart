import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

import '../../core/errors/manager_failure.dart';
import '../../core/errors/parking_failure.dart';
import '../entities/parking_lot.dart';
import '../repositories/i_manager_repository.dart';
import '../repositories/i_parking_lot_repository.dart';

@lazySingleton
class DeleteParkingLot {
  final IParkingLotRepository _parkingLotRepository;
  final IManagerRepository _managerRepository;

  const DeleteParkingLot(this._parkingLotRepository, this._managerRepository) : assert(_parkingLotRepository != null);

  Future<Either<ParkingFailure, Unit>> call(ParkingLot parkingLot) async {
    final parkingLotEither = await _parkingLotRepository.delete(parkingLot);
    return parkingLotEither.fold(
      (f) => left(f),
      (_) async {
        final either = await caseParkingLotEitherSuccess(parkingLot);
        return either.fold(
          (f) => left(ParkingFailure.serverFailure()),
          (_) => right(unit),
        );
      },
    );
  }

  Future<Either<ManagerFailure, Unit>> caseParkingLotEitherSuccess(ParkingLot parkingLot) async {
    final managerEither = await _managerRepository.read();
    return managerEither.fold(
      (f) => left(f),
      (manager) async {
        final newList = manager.parkingLots.minusElement(parkingLot.id);
        final newManager = manager.copyWith(parkingLots: newList);
        final updateEither = await _managerRepository.update(newManager);
        return updateEither.fold(
          (f) => left(f),
          (_) => right(unit),
        );
      },
    );
  }
}
