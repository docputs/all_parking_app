import 'package:all_parking/utils/error_report_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/firebase_helpers.dart';
import '../../../parking/data/dtos/employee_dto.dart';
import '../../../parking/domain/entities/employee.dart';
import '../../core/errors/auth_failure.dart';
import '../../domain/repositories/i_employee_auth_repository.dart';
import '../datasources/i_local_data_source.dart';

@LazySingleton(as: IEmployeeAuthRepository)
class EmployeeAuthRepository implements IEmployeeAuthRepository {
  final ILocalDataSource _localDataSource;
  final FirebaseFirestore _firestore;
  final ErrorReportService _reportService;

  const EmployeeAuthRepository(this._localDataSource, this._firestore, this._reportService);

  @override
  Future<Option<Employee>> getCurrentEmployee() async {
    try {
      final tokenOption = await _localDataSource.getToken();
      return tokenOption.fold(() => none(), (token) async {
        await _reportService.setUserIdentifier(token);
        return _fetchEmployeeFromDatabase(token);
      });
    } on FirebaseException catch (e) {
      await _reportService.log(e.message);
      return none();
    } catch (e) {
      await _reportService.log(e.message);
      return none();
    }
  }

  Future<Option<Employee>> _fetchEmployeeFromDatabase(String token) async {
    final doc = await _firestore.employeeCollection.doc(token).get();
    final employeeDTO = EmployeeDTO.fromFirestore(doc);
    return optionOf(employeeDTO.toDomain());
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithToken(String token) async {
    try {
      final doc = await _firestore.employeeCollection.doc(token).get();
      if (doc.exists) {
        await _localDataSource.persistToken(token);
        return right(unit);
      }
      return left(AuthFailure.employeeNotFound());
    } on FirebaseException catch (e) {
      await _reportService.log(e.message);
      return left(AuthFailure.serverFailure());
    } catch (e) {
      await _reportService.log(e.message);
      return left(AuthFailure.unknownFailure());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signOut() async {
    try {
      await _localDataSource.deleteToken();
      return right(unit);
    } catch (e) {
      print(e);
      return left(AuthFailure.unknownFailure());
    }
  }
}
