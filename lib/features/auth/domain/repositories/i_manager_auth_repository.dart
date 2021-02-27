import 'package:dartz/dartz.dart';

import '../../../parking/domain/entities/manager.dart';
import '../../core/errors/auth_failure.dart';
import '../../data/models/register_model.dart';
import '../../data/models/sign_in_model.dart';
import '../entities/user.dart';

abstract class IManagerAuthRepository {
  Future<Either<AuthFailure, Unit>> createAccount(RegisterModel registerModel);
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(SignInModel signInModel);
  Future<Either<AuthFailure, Unit>> deleteAccount();
  Stream<Option<User>> onAuthStatusChanged();
  Future<Option<Manager>> getCurrentManager();
  Future<void> signOut();
}
