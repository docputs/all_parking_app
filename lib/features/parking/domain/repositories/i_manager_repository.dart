import 'package:all_parking/features/parking/core/errors/parking_failure.dart';
import 'package:dartz/dartz.dart';

import '../entities/manager.dart';

abstract class IManagerRepository {
  Future<Either<ParkingFailure, Unit>> update(Manager manager);
  Future<Either<ParkingFailure, Manager>> read();
}
