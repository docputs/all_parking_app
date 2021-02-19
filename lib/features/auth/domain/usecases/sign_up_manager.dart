import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/validators.dart';
import '../../core/errors/auth_failure.dart';
import '../../data/models/register_model.dart';
import '../repositories/i_manager_auth_repository.dart';

@lazySingleton
class SignUpManager {
  final IManagerAuthRepository _userRepository;

  const SignUpManager(this._userRepository) : assert(_userRepository != null);

  Future<Either<AuthFailure, Unit>> call({
    @required String firstName,
    @required String lastName,
    @required String email,
    @required String password,
  }) {
    final displayNameEither = Validators.validateDisplayName('$firstName $lastName');
    if (displayNameEither.isLeft()) return displayNameEither.fold((f) => Future.value(left(f)), null);

    final emailEither = Validators.validateEmailAddress(email);
    if (emailEither.isLeft()) return emailEither.fold((f) => Future.value(left(f)), null);

    final passwordEither = Validators.validatePassword(password);
    if (passwordEither.isLeft()) return passwordEither.fold((f) => Future.value(left(f)), null);

    return _userRepository.createAccount(RegisterModel(email: email, firstName: firstName, lastName: lastName, password: password));
  }
}
