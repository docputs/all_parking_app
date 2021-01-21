import 'package:all_parking/utils/validators.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../../core/errors/auth_failure.dart';
import '../../data/models/sign_in_model.dart';
import '../repositories/i_user_repository.dart';

@lazySingleton
class SignIn {
  final Validators _validators;
  final IUserRepository _userRepository;

  const SignIn(this._validators, this._userRepository)
      : assert(_userRepository != null),
        assert(_validators != null);

  Future<Either<AuthFailure, Unit>> call({@required String email, @required String password}) {
    final emailEither = _validators.validateEmailAddress(email);
    return emailEither.fold(
      (failure) => Future.value(left(failure)),
      (_) => _userRepository.signInWithEmailAndPassword(SignInModel(email: email, password: password)),
    );
  }
}
