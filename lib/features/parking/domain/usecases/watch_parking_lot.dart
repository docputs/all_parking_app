import 'package:all_parking/features/auth/domain/repositories/i_employee_auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../core/errors/parking_failure.dart';
import '../entities/parking_lot.dart';
import '../repositories/i_parking_lot_repository.dart';

@lazySingleton
class WatchParkingLot {
  final IEmployeeAuthRepository _authRepository;
  final IParkingLotRepository _parkingLotRepository;

  const WatchParkingLot(this._parkingLotRepository, this._authRepository);

  Stream<Either<ParkingFailure, ParkingLot>> call() async* {
    final employeeOption = await _authRepository.getCurrentEmployee();
    yield* employeeOption.fold(
      () async* {
        yield left(ParkingFailure.noCurrentParkingLot());
      },
      (employee) async* {
        yield* _parkingLotRepository.watchById(employee.parkingLot.id);
      },
    );
  }
}
