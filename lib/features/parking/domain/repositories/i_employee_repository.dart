import 'package:all_parking/features/parking/core/errors/parking_failure.dart';
import 'package:all_parking/features/parking/domain/entities/employee.dart';
import 'package:dartz/dartz.dart';

abstract class IEmployeeRepository {
  Future<Either<ParkingFailure, Unit>> create(Employee employee);
  Future<Either<ParkingFailure, Employee>> read();
  Future<Either<ParkingFailure, Unit>> update(Employee employee);
  Future<Either<ParkingFailure, Unit>> delete(Employee employee);
}
