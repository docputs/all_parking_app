import 'package:dartz/dartz.dart';

import '../../../parking/domain/entities/employee.dart';
import '../../core/errors/auth_failure.dart';

abstract class IEmployeeAuthRepository {
  Future<Either<AuthFailure, Unit>> signInWithToken(String token);
  Future<Either<AuthFailure, Unit>> signOut();
  Future<Option<Employee>> getCurrentEmployee();
}
