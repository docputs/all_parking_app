import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../core/errors/parking_failure.dart';
import '../entities/parking_lot.dart';
import '../repositories/i_parking_lot_repository.dart';

@lazySingleton
class EditParkingLot {
  final IParkingLotRepository _parkingLotRepository;

  const EditParkingLot(this._parkingLotRepository) : assert(_parkingLotRepository != null);

  Future<Either<ParkingFailure, Unit>> call(ParkingLot parkingLot) {
    return _parkingLotRepository.update(parkingLot);
  }
}
