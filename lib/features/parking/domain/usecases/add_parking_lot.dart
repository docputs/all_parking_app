import 'package:dartz/dartz.dart';

import '../../core/errors/parking_failure.dart';
import '../entities/parking_lot.dart';
import '../repositories/i_parking_lot_repository.dart';

class AddParkingLot {
  final IParkingLotRepository _repository;

  const AddParkingLot(this._repository);

  Future<Either<ParkingFailure, Unit>> call(ParkingLot parkingLot) {
    return _repository.create(parkingLot);
  }
}
