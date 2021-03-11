import 'package:all_parking/utils/error_report_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/firebase_helpers.dart';
import '../../core/errors/parking_failure.dart';
import '../../domain/entities/employee.dart';
import '../../domain/repositories/i_employee_repository.dart';
import '../dtos/employee_dto.dart';

@LazySingleton(as: IEmployeeRepository)
class EmployeeRepository implements IEmployeeRepository {
  final FirebaseFirestore _firestore;
  final ErrorReportService _reportService;

  const EmployeeRepository(this._firestore, this._reportService);

  Future<Either<ParkingFailure, Unit>> _handleExceptions(Future<void> Function() function) async {
    try {
      await function();
      return right(unit);
    } on FirebaseException catch (e, s) {
      await _reportService.log(e, s);
      return left(ParkingFailure.serverFailure());
    } catch (e, s) {
      await _reportService.log(e, s);
      return left(ParkingFailure.unknownFailure());
    }
  }

  @override
  Future<Either<ParkingFailure, Unit>> create(Employee employee) async {
    return _handleExceptions(() async {
      final employeeDTO = EmployeeDTO.fromDomain(employee);
      await _firestore.employeeCollection.doc(employee.id).set(employeeDTO.toJson());
    });
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
    return _handleExceptions(() async {
      await _firestore.employeeCollection.doc(employee.id).delete();
    });
  }
}
