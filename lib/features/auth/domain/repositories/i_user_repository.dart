import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import '../../core/errors/auth_failure.dart';
import '../entities/user.dart';

abstract class IUserRepository {
  Future<Either<AuthFailure, Unit>> createAccount({
    @required String displayName,
    @required String email,
    @required String password,
  });
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required String email,
    @required String password,
  });
  Future<void> signOut();
  Stream<Option<User>> onAuthStatusChanged();
  Future<Option<User>> getCurrentUser();
  Future<Either<AuthFailure, Unit>> deleteAccount();
}
