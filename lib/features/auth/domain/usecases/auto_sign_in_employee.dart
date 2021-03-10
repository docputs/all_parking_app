import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../core/errors/auth_failure.dart';
import '../../data/datasources/i_local_data_source.dart';
import '../repositories/i_employee_auth_repository.dart';

@lazySingleton
class AutoSignInEmployee {
  final IEmployeeAuthRepository _authRepository;
  final ILocalDataSource _localDataSource;

  const AutoSignInEmployee(this._authRepository, this._localDataSource);

  Future<Either<AuthFailure, Unit>> call() async {
    final tokenOption = await _localDataSource.getToken();
    return tokenOption.fold(
      () => left(AuthFailure.autoSignInFailed()),
      _performAuthentication,
    );
  }

  Future<Either<AuthFailure, Unit>> _performAuthentication(String token) {
    return _authRepository.signInWithToken(token);
  }
}
