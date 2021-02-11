import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

import '../../core/errors/parking_failure.dart';
import '../entities/parking_lot.dart';
import '../repositories/i_manager_repository.dart';
import '../repositories/i_parking_lot_repository.dart';

@lazySingleton
class WatchAllParkingLots {
  final IParkingLotRepository _parkingLotRepository;
  final IManagerRepository _managerRepository;

  const WatchAllParkingLots(this._parkingLotRepository, this._managerRepository)
      : assert(_parkingLotRepository != null, _managerRepository != null);

  Stream<Either<ParkingFailure, KtList<ParkingLot>>> call() async* {
  //TODO: maybe change ManagerFailure to ParkingFailure
    final managerEither = await _managerRepository.read();
    yield* managerEither.fold(
      (f) async* {
        yield left(ParkingFailure.serverFailure());
      },
      (manager) => _parkingLotRepository.watchAll(manager),
    );
  }
}
