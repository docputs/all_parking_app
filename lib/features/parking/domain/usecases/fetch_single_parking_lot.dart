import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

import '../../../auth/domain/repositories/i_employee_auth_repository.dart';
import '../../core/errors/parking_failure.dart';
import '../entities/parking_lot.dart';
import '../repositories/i_parking_lot_repository.dart';

@lazySingleton
class FetchSingleParkingLot {
  final IEmployeeAuthRepository _authRepository;
  final IParkingLotRepository _parkingLotRepository;

  const FetchSingleParkingLot(this._parkingLotRepository, this._authRepository);

  Future<Either<ParkingFailure, ParkingLot>> call() async {
    final employeeOption = await _authRepository.getCurrentEmployee();
    return employeeOption.fold(
      () => left(ParkingFailure.unknownFailure()),
      (employee) async {
        final fetchEither = await _parkingLotRepository.fetchParkingLots(KtList.of(employee.parkingLot.id));
        return fetchEither.fold(
          (f) => left(f),
          (parkingLots) => right(parkingLots.single()),
        );
      },
    );
  }
}
