import 'package:all_parking/features/auth/core/errors/auth_failure.dart';
import 'package:all_parking/features/parking/domain/entities/employee.dart';
import 'package:dartz/dartz.dart';

abstract class IEmployeeAuthRepository {
  Future<Either<AuthFailure, Unit>> signInWithToken(String token);
  Future<Either<AuthFailure, Unit>> signOut();
  Future<Option<Employee>> getCurrentEmployee();
}
