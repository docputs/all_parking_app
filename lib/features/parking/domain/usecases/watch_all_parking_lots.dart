import 'package:all_parking/features/parking/core/errors/parking_failure.dart';
import 'package:all_parking/features/parking/domain/entities/parking_lot.dart';
import 'package:all_parking/features/parking/domain/repositories/i_manager_repository.dart';
import 'package:all_parking/features/parking/domain/repositories/i_parking_lot_repository.dart';
import 'package:all_parking/res/messages.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

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
        yield left(const ParkingFailure.serverFailure(Messages.serverFailure));
      },
      (manager) => _parkingLotRepository.watchAll(manager),
    );
  }
}
