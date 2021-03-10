import 'package:dartz/dartz.dart';

import '../../core/errors/parking_failure.dart';
import '../entities/employee.dart';

abstract class IEmployeeRepository {
  Future<Either<ParkingFailure, Unit>> create(Employee employee);
  Future<Either<ParkingFailure, Employee>> read();
  Future<Either<ParkingFailure, Unit>> update(Employee employee);
  Future<Either<ParkingFailure, Unit>> delete(Employee employee);
}
