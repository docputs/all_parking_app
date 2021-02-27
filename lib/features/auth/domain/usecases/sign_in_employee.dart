import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../core/errors/auth_failure.dart';
import '../repositories/i_employee_auth_repository.dart';

@lazySingleton
class SignInEmployee {
  final IEmployeeAuthRepository _authRepository;

  const SignInEmployee(this._authRepository);

  Future<Either<AuthFailure, Unit>> call(String token) {
    return _authRepository.signInWithToken(token);
  }
}
