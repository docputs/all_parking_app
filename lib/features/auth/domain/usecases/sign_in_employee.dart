import 'package:all_parking/features/auth/core/errors/auth_failure.dart';
import 'package:all_parking/features/auth/domain/repositories/i_employee_auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SignInEmployee {
  final IEmployeeAuthRepository _authRepository;

  const SignInEmployee(this._authRepository);

  Future<Either<AuthFailure, Unit>> call(String token) {
    return _authRepository.signInWithToken(token);
  }
}
