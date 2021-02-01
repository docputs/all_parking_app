import 'package:all_parking/features/parking/core/errors/parking_failure.dart';
import 'package:all_parking/features/parking/domain/entities/parking_lot.dart';
import 'package:all_parking/features/parking/domain/repositories/i_parking_lot_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class EditParkingLot {
  final IParkingLotRepository _parkingLotRepository;

  const EditParkingLot(this._parkingLotRepository) : assert(_parkingLotRepository != null);

  Future<Either<ParkingFailure, Unit>> call(ParkingLot parkingLot) {
    return _parkingLotRepository.edit(parkingLot);
  }
}
