import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/validators.dart';
import '../../core/errors/auth_failure.dart';
import '../../data/models/sign_in_model.dart';
import '../repositories/i_manager_auth_repository.dart';

@lazySingleton
class SignInManager {
  final IManagerAuthRepository _userRepository;

  const SignInManager(this._userRepository) : assert(_userRepository != null);

  Future<Either<AuthFailure, Unit>> call({@required String email, @required String password}) {
    final emailEither = Validators.validateEmailAddress(email);
    return emailEither.fold(
      (failure) => Future.value(left(failure)),
      (_) => _userRepository.signInWithEmailAndPassword(SignInModel(email: email, password: password)),
    );
  }
}
