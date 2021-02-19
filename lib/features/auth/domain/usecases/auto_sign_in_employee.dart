import 'package:all_parking/features/auth/core/errors/auth_failure.dart';
import 'package:all_parking/features/auth/domain/repositories/i_employee_auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AutoSignInEmployee {
  final IEmployeeAuthRepository _authRepository;

  const AutoSignInEmployee(this._authRepository);

  Future<Either<AuthFailure, Unit>> call() async {
    final tokenOption = await _authRepository.getPersistentToken();
    return tokenOption.fold(
      () => left(AuthFailure.autoSignInFailed()),
      _performAuthentication,
    );
  }

  Future<Either<AuthFailure, Unit>> _performAuthentication(String token) {
    return _authRepository.signInWithToken(token);
  }
}
