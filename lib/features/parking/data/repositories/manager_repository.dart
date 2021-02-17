import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import '../../core/errors/manager_failure.dart';
import '../../domain/entities/manager.dart';
import '../../domain/repositories/i_manager_repository.dart';
import '../models/manager_dto.dart';

@LazySingleton(as: IManagerRepository)
class ManagerRepository implements IManagerRepository {
  final FirebaseFirestore _firestore;
  final FirebaseAuth _firebaseAuth;

  const ManagerRepository(this._firestore, this._firebaseAuth) : assert(_firestore != null, _firebaseAuth != null);

  @override
  Future<Either<ManagerFailure, Unit>> update(Manager manager) async {
    try {
      final managerDTO = ManagerDTO.fromDomain(manager);
      final managerDoc = await _firestore.collection('users').doc(manager.id);
      await managerDoc.set(managerDTO.toJson(), SetOptions(merge: true));
      return right(unit);
    } on FirebaseException catch (e) {
      print(e);
      return left(ManagerFailure.serverFailure());
    } catch (e) {
      print(e);
      return left(ManagerFailure.unknownFailure());
    }
  }

  Future<Either<ManagerFailure, Manager>> read() async {
    try {
      final user = _firebaseAuth.currentUser;
      final managerDoc = await _firestore.collection('users').doc(user.uid).get();
      return right(ManagerDTO.fromFirestore(managerDoc).toDomain());
    } on FirebaseException catch (e) {
      print(e);
      return left(ManagerFailure.serverFailure());
    } catch (e) {
      print(e);
      return left(ManagerFailure.unknownFailure());
    }
  }
}
