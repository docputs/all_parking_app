import 'package:all_parking/utils/validators.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../../core/errors/auth_failure.dart';
import '../../data/models/register_model.dart';
import '../repositories/i_user_repository.dart';

@lazySingleton
class SignUp {
  final IUserRepository _userRepository;
  final Validators _validators;

  const SignUp(this._userRepository, this._validators)
      : assert(_userRepository != null),
        assert(_validators != null);

  Future<Either<AuthFailure, Unit>> call({
    @required String firstName,
    @required String lastName,
    @required String email,
    @required String password,
  }) {
    final displayNameEither = _validators.validateDisplayName('$firstName $lastName');
    if (displayNameEither.isLeft()) return displayNameEither.fold((f) => Future.value(left(f)), null);

    final emailEither = _validators.validateEmailAddress(email);
    if (emailEither.isLeft()) return emailEither.fold((f) => Future.value(left(f)), null);

    final passwordEither = _validators.validatePassword(password);
    if (passwordEither.isLeft()) return passwordEither.fold((f) => Future.value(left(f)), null);

    return _userRepository.createAccount(RegisterModel(email: email, firstName: firstName, lastName: lastName, password: password));
  }
}
