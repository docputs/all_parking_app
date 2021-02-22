import 'package:all_parking/features/auth/core/errors/auth_failure.dart';
import 'package:all_parking/features/auth/data/datasources/i_local_data_source.dart';
import 'package:all_parking/features/auth/domain/repositories/i_employee_auth_repository.dart';
import 'package:all_parking/features/parking/core/util/firebase_helpers.dart';
import 'package:all_parking/features/parking/data/dtos/employee_dto.dart';
import 'package:all_parking/features/parking/domain/entities/employee.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IEmployeeAuthRepository)
class EmployeeAuthRepository implements IEmployeeAuthRepository {
  final ILocalDataSource _localDataSource;
  final FirebaseFirestore _firestore;

  const EmployeeAuthRepository(this._localDataSource, this._firestore);

  @override
  Future<Option<Employee>> getCurrentEmployee() async {
    try {
      final tokenOption = await _localDataSource.getToken();
      return tokenOption.fold(() => none(), _fetchEmployeeFromDatabase);
    } on FirebaseException catch (e) {
      print(e);
      return none();
    } catch (e) {
      print(e);
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
      print(e);
      return left(AuthFailure.serverFailure());
    } catch (e) {
      print(e);
      return left(AuthFailure.unknownFailure());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }
}
