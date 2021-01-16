import 'package:dartz/dartz.dart';

import '../../core/errors/manager_failure.dart';
import '../entities/parking_lot.dart';

abstract class IManagerRepository {
  Future<Either<ManagerFailure, Unit>> addEmployee();
  Future<Either<ManagerFailure, Unit>> removeEmployee();
  Future<Either<ManagerFailure, List<ParkingLot>>> fetchParkingLots();
}
