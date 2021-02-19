import 'package:all_parking/features/auth/core/errors/auth_failure.dart';
import 'package:all_parking/features/auth/domain/repositories/i_employee_auth_repository.dart';
import 'package:all_parking/res/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:all_parking/features/parking/domain/entities/employee.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: IEmployeeAuthRepository)
class EmployeeAuthRepository implements IEmployeeAuthRepository {
  final SharedPreferences _sharedPreferences;
  final FirebaseFirestore _firestore;

  const EmployeeAuthRepository(this._sharedPreferences, this._firestore);

  @override
  Future<Option<Employee>> getCurrentEmployee() {
    throw UnimplementedError();
  }

  @override
  Future<Option<String>> getPersistentToken() async {
    final employeeToken = _sharedPreferences.getString(Constants.employeeKey);
    return optionOf(employeeToken);
  }

  Future<void> _persistToken(String token) {
    return _sharedPreferences.setString(Constants.employeeKey, token);
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithToken(String token) async {
    try {
      final doc = await _firestore.collection('users').doc(token).get();
      if (doc.exists) {
        await _persistToken(token);
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
