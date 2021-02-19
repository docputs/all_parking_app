import 'package:all_parking/features/parking/data/dtos/employee_dto.dart';
import 'package:all_parking/features/parking/domain/entities/employee.dart';
import 'package:all_parking/features/parking/core/errors/parking_failure.dart';
import 'package:all_parking/features/parking/domain/repositories/i_employee_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IEmployeeRepository)
class EmployeeRepository implements IEmployeeRepository {
  final FirebaseFirestore _firestore;

  const EmployeeRepository(this._firestore) : assert(_firestore != null);

  @override
  Future<Either<ParkingFailure, Unit>> create(Employee employee) async {
    try {
      final employeeDTO = EmployeeDTO.fromDomain(employee);
      await _firestore.collection('users').doc(employee.id).set(employeeDTO.toJson());
      return right(unit);
    } on FirebaseException catch (e) {
      print(e);
      return left(ParkingFailure.serverFailure());
    } catch (e) {
      print(e);
      return left(ParkingFailure.unknownFailure());
    }
  }

  @override
  Future<Either<ParkingFailure, Employee>> read() {
    // TODO: implement read
    throw UnimplementedError();
  }

  @override
  Future<Either<ParkingFailure, Unit>> update(Employee employee) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Future<Either<ParkingFailure, Unit>> delete(Employee employee) async {
    try {
      await _firestore.collection('users').doc(employee.id).delete();
      return right(unit);
    } on FirebaseException catch (e) {
      print(e);
      return left(ParkingFailure.serverFailure());
    } catch (e) {
      print(e);
      return left(ParkingFailure.unknownFailure());
    }
  }
}
