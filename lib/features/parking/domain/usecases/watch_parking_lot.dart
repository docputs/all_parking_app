import 'package:all_parking/res/messages.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../core/errors/parking_failure.dart';
import '../entities/parking_lot.dart';
import '../repositories/i_manager_repository.dart';
import '../repositories/i_parking_lot_repository.dart';

@lazySingleton
class WatchParkingLot {
  final IManagerRepository _managerRepository;
  final IParkingLotRepository _parkingLotRepository;

  const WatchParkingLot(this._parkingLotRepository, this._managerRepository)
      : assert(_parkingLotRepository != null, _managerRepository != null);

  Stream<Either<ParkingFailure, ParkingLot>> call(ParkingLot parkingLot) async* {
    final managerEither = await _managerRepository.read();
    yield* managerEither.fold(
      (f) async* {
        yield left(const ParkingFailure.serverFailure(Messages.serverFailure));
      },
      (manager) async* {
        if (manager.parkingLots.contains(parkingLot.id))
          yield* _parkingLotRepository.watchById(parkingLot.id);
        else
          yield left(const ParkingFailure.serverFailure(Messages.serverFailure));
      },
    );
  }
}
