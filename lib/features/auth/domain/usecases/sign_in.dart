import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import '../../core/errors/auth_failure.dart';
import '../../core/util/validators.dart';
import '../repositories/i_user_repository.dart';

class SignIn {
  final Validators validators;
  final IUserRepository userRepository;

  const SignIn(this.validators, this.userRepository);

  Future<Either<AuthFailure, Unit>> call({@required String email, @required String password}) {
    final emailEither = validators.validateEmailAddress(email);
    return emailEither.fold(
      (failure) => Future.value(left(failure)),
      (_) => userRepository.signInWithEmailAndPassword(email: email, password: password),
    );
  }
}
