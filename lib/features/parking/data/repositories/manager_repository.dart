import 'package:all_parking/utils/error_report_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/firebase_helpers.dart';
import '../../core/errors/parking_failure.dart';
import '../../domain/entities/manager.dart';
import '../../domain/repositories/i_manager_repository.dart';
import '../dtos/manager_dto.dart';

@LazySingleton(as: IManagerRepository)
class ManagerRepository implements IManagerRepository {
  final FirebaseFirestore _firestore;
  final FirebaseAuth _firebaseAuth;
  final ErrorReportService _reportService;

  const ManagerRepository(this._firestore, this._firebaseAuth, this._reportService);

  Future<Either<ParkingFailure, Unit>> _handleExceptions(Future<void> Function() function) async {
    try {
      await function();
      return right(unit);
    } on FirebaseException catch (e) {
      await _reportService.log(e.message);
      return left(ParkingFailure.serverFailure());
    } catch (e) {
      await _reportService.log(e.message);
      return left(ParkingFailure.unknownFailure());
    }
  }

  @override
  Future<Either<ParkingFailure, Unit>> update(Manager manager) async {
    return _handleExceptions(() async {
      final managerDTO = ManagerDTO.fromDomain(manager);
      final managerDoc = await _firestore.managerCollection.doc(manager.id);
      await managerDoc.set(managerDTO.toJson(), SetOptions(merge: true));
      return right(unit);
    });
  }

  Future<Either<ParkingFailure, Manager>> read() async {
    try {
      final user = _firebaseAuth.currentUser;
      final managerDoc = await _firestore.managerCollection.doc(user.uid).get();
      return right(ManagerDTO.fromFirestore(managerDoc).toDomain());
    } on FirebaseException catch (e) {
      await _reportService.log(e.message);
      return left(ParkingFailure.serverFailure());
    } catch (e) {
      await _reportService.log(e.message);
      return left(ParkingFailure.unknownFailure());
    }
  }
}
