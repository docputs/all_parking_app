import 'package:dartz/dartz.dart';

import '../../core/errors/auth_failure.dart';
import '../../data/models/register_model.dart';
import '../../data/models/sign_in_model.dart';
import '../entities/user.dart';

abstract class IUserRepository {
  Future<Either<AuthFailure, Unit>> createAccount(RegisterModel registerModel);
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(SignInModel signInModel);
  Future<void> signOut();
  Stream<Option<User>> onAuthStatusChanged();
  Future<Option<User>> getCurrentUser();
  Future<Either<AuthFailure, Unit>> deleteAccount();
  Future<Either<AuthFailure, Unit>> addEmployee(String phoneNumber);
}
