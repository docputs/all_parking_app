import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:injectable/injectable.dart';

import '../../core/errors/auth_failure.dart';
import '../../core/util/firebase_user_mapper.dart';
import '../../domain/entities/user.dart';
import '../../domain/repositories/i_user_repository.dart';
import '../models/register_model.dart';
import '../models/sign_in_model.dart';

@LazySingleton(as: IUserRepository)
class UserRepository implements IUserRepository {
  final FirebaseAuth _firebaseAuth;

  const UserRepository(this._firebaseAuth) : assert(_firebaseAuth != null);

  @override
  Future<Either<AuthFailure, Unit>> createAccount(RegisterModel registerModel) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(email: registerModel.email, password: registerModel.password);
      await _firebaseAuth.currentUser.updateProfile(displayName: registerModel.fullName);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-email') {
        return left(AuthFailure.invalidEmailAddress());
      } else if (e.code == 'email-already-in-use') {
        return left(AuthFailure.emailAlreadyInUse());
      } else if (e.code == 'weak-password') {
        return left(AuthFailure.weakPassword());
      } else {
        return left(AuthFailure.serverFailure());
      }
    } catch (e) {
      return left(AuthFailure.unknownFailure());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> deleteAccount() {
    // TODO: implement deleteUser
  }

  @override
  Future<Option<User>> getCurrentUser() async {
    final user = _firebaseAuth.currentUser;
    return optionOf(user?.toDomain());
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(SignInModel signInModel) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(email: signInModel.email, password: signInModel.password);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-email') {
        return left(AuthFailure.invalidEmailAddress());
      } else if (e.code == 'user-not-found' || e.code == 'wrong-password') {
        return left(AuthFailure.invalidEmailAndPasswordCombination());
      } else {
        return left(AuthFailure.serverFailure());
      }
    } catch (e) {
      return left(AuthFailure.unknownFailure());
    }
  }

  @override
  Stream<Option<User>> onAuthStatusChanged() async* {
    yield* _firebaseAuth.userChanges().map((user) => optionOf(user?.toDomain()));
  }

  @override
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }
}
