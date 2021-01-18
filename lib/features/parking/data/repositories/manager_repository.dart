import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../core/errors/manager_failure.dart';
import '../../core/util/firebase_helpers.dart';
import '../../domain/entities/manager.dart';
import '../../domain/repositories/i_manager_repository.dart';
import '../models/manager_dto.dart';

@LazySingleton(as: IManagerRepository)
class ManagerRepository implements IManagerRepository {
  final FirebaseFirestore _firestore;

  const ManagerRepository(this._firestore) : assert(_firestore != null);

  @override
  Future<Either<ManagerFailure, Unit>> update(Manager manager) async {
    try {
      final managerDoc = await _firestore.managerDocument();
      final managerDTO = ManagerDTO.fromDomain(manager);
      await managerDoc.set(managerDTO.toJson(), SetOptions(merge: true));
      return right(unit);
    } on FirebaseException catch (e) {
      print(e);
      return left(const ManagerFailure.serverFailure());
    } catch (e) {
      print(e);
      return left(const ManagerFailure.unknownFailure());
    }
  }

  Future<Either<ManagerFailure, Manager>> read() async {
    try {
      final managerDoc = await _firestore.managerDocument().then((doc) => doc.get());
      return right(ManagerDTO.fromFirestore(managerDoc).toDomain());
    } on FirebaseException catch (e) {
      print(e);
      return left(const ManagerFailure.serverFailure());
    } catch (e) {
      print(e);
      return left(const ManagerFailure.unknownFailure());
    }
  }
}
