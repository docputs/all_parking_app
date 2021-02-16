import 'package:all_parking/features/auth/core/errors/auth_failure.dart';
import 'package:all_parking/features/auth/domain/repositories/i_user_repository.dart';
import 'package:all_parking/utils/validators.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SignUpEmployee {
  final IUserRepository _repository;

  const SignUpEmployee(this._repository) : assert(_repository != null);

  Future<Either<AuthFailure, Unit>> call(String phoneNumber) {
    final phoneEither = Validators.validatePhoneNumber(phoneNumber);
    return phoneEither.fold(
      (f) => Future.value(left(f)),
      (validNumber) => _repository.addEmployee(validNumber),
    );
  }
}
