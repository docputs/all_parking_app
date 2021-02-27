import 'package:dartz/dartz.dart';

import '../../core/errors/parking_failure.dart';
import '../entities/manager.dart';

abstract class IManagerRepository {
  Future<Either<ParkingFailure, Unit>> update(Manager manager);
  Future<Either<ParkingFailure, Manager>> read();
}
