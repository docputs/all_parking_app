import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../../core/errors/auth_failure.dart';
import '../../core/util/validators.dart';
import '../repositories/i_user_repository.dart';

@lazySingleton
class SignUp {
  final IUserRepository _userRepository;
  final Validators _validators;

  SignUp(this._userRepository, this._validators);

  Future<Either<AuthFailure, Unit>> call({@required String displayName, @required String email, @required String password}) {
    final displayNameEither = _validators.validateDisplayName(displayName);
    if (displayNameEither.isLeft()) return displayNameEither.fold((f) => Future.value(left(f)), null);

    final emailEither = _validators.validateEmailAddress(email);
    if (emailEither.isLeft()) return emailEither.fold((f) => Future.value(left(f)), null);

    final passwordEither = _validators.validatePassword(password);
    if (passwordEither.isLeft()) return passwordEither.fold((f) => Future.value(left(f)), null);

    return _userRepository.createAccount(displayName: displayName, email: email, password: password);
  }
}
