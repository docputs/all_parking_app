import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../core/errors/parking_failure.dart';
import '../entities/parking_lot.dart';
import '../repositories/i_manager_repository.dart';
import '../repositories/i_parking_lot_repository.dart';

@lazySingleton
class FetchParkingLots {
  final IManagerRepository _managerRepository;
  final IParkingLotRepository _parkingLotRepository;

  const FetchParkingLots(this._parkingLotRepository, this._managerRepository)
      : assert(_parkingLotRepository != null, _managerRepository != null);

  Future<Either<ParkingFailure, List<ParkingLot>>> call() async {
    final managerEither = await _managerRepository.read();
    return managerEither.fold(
      (f) => left(ParkingFailure.serverFailure()),
      (manager) => _parkingLotRepository.fetchAll(manager),
    );
  }
}
