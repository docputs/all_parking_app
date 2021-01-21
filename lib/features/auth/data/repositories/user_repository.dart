import 'package:all_parking/res/messages.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:injectable/injectable.dart';

import '../../../parking/data/models/manager_dto.dart';
import '../../core/errors/auth_failure.dart';
import '../../core/util/firebase_user_mapper.dart';
import '../../domain/entities/user.dart';
import '../../domain/repositories/i_user_repository.dart';
import '../models/register_model.dart';
import '../models/sign_in_model.dart';

@LazySingleton(as: IUserRepository)
class UserRepository implements IUserRepository {
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firestore;

  const UserRepository(this._firebaseAuth, this._firestore) : assert(_firebaseAuth != null, _firestore != null);

  @override
  Future<Either<AuthFailure, Unit>> createAccount(RegisterModel registerModel) async {
    try {
      final credential = await _firebaseAuth.createUserWithEmailAndPassword(email: registerModel.email, password: registerModel.password);
      await credential.user.updateProfile(displayName: registerModel.firstName);

      final managerDTO = ManagerDTO.fromFirebaseUser(_firebaseAuth.currentUser);
      await _firestore.collection('managers').doc(credential.user.uid).set(managerDTO.toJson());
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-email') {
        return left(const AuthFailure.invalidEmailAddress(Messages.invalidEmailAndPasswordCombination));
      } else if (e.code == 'email-already-in-use') {
        return left(const AuthFailure.emailAlreadyInUse(Messages.emailAlreadyInUse));
      } else if (e.code == 'weak-password') {
        return left(const AuthFailure.weakPassword(Messages.weakPassword));
      } else {
        return left(const AuthFailure.serverFailure(Messages.serverFailure));
      }
    } catch (e) {
      return left(const AuthFailure.unknownFailure(Messages.unknownFailure));
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
        return left(const AuthFailure.invalidEmailAddress(Messages.invalidEmailAndPasswordCombination));
      } else if (e.code == 'user-not-found' || e.code == 'wrong-password') {
        return left(const AuthFailure.invalidEmailAndPasswordCombination(Messages.invalidEmailAndPasswordCombination));
      } else {
        return left(const AuthFailure.serverFailure(Messages.serverFailure));
      }
    } catch (e) {
      return left(const AuthFailure.unknownFailure(Messages.unknownFailure));
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
