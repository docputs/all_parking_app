import 'package:all_parking/features/auth/core/util/firestore_user_mapper.dart';
import 'package:all_parking/features/parking/data/dtos/manager_dto.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
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
  final FirebaseFirestore _firestore;

  const UserRepository(this._firebaseAuth, this._firestore) : assert(_firebaseAuth != null, _firestore != null);

  @override
  Future<Either<AuthFailure, Unit>> createAccount(RegisterModel registerModel) async {
    try {
      final credential = await _firebaseAuth.createUserWithEmailAndPassword(email: registerModel.email, password: registerModel.password);
      await credential.user.updateProfile(displayName: registerModel.firstName);

      final managerDTO = ManagerDTO.fromFirebaseUser(_firebaseAuth.currentUser);
      await _firestore.collection('users').doc(credential.user.uid).set(managerDTO.toJson());
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
    try {
      final user = _firebaseAuth.currentUser;
      final doc = await _firestore.collection('users').doc(user.uid).get();
      return optionOf(FirestoreUserConverter.convert(doc));
    } on FirebaseException catch (e) {
      print(e);
      return none();
    } catch (e) {
      return none();
    }
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

  @override
  Future<Either<AuthFailure, Unit>> signInWithToken(String token) async {
    try {
      final doc = await _firestore.collection('users').doc(token).get();
      if (doc.exists) return right(unit);
      return left(AuthFailure.serverFailure());
    } on FirebaseException catch (e) {
      print(e);
      return left(AuthFailure.serverFailure());
    } catch (e) {
      print(e);
      return left(AuthFailure.unknownFailure());
    }
  }
}
