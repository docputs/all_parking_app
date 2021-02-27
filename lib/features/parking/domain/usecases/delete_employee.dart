import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

import '../../../auth/core/errors/not_authenticated_exception.dart';
import '../../core/errors/parking_failure.dart';
import '../entities/employee.dart';
import '../entities/manager.dart';
import '../repositories/i_employee_repository.dart';
import '../repositories/i_manager_repository.dart';

@lazySingleton
class DeleteEmployee {
  final IManagerRepository _managerRepository;
  final IEmployeeRepository _employeeRepository;

  const DeleteEmployee(this._managerRepository, this._employeeRepository)
      : assert(_managerRepository != null && _employeeRepository != null);

  Future<Either<ParkingFailure, Unit>> call(Employee employee) async {
    final manager = await _getManager();
    final newManager = manager.copyWith(employees: manager.employees.minusElement(employee));
    final updateEither = await _managerRepository.update(newManager);
    return updateEither.fold(
      (f) => left(f),
      (_) => _employeeRepository.delete(employee),
    );
  }

  Future<Manager> _getManager() async {
    final managerEither = await _managerRepository.read();
    return managerEither.getOrElse(() => throw NotAuthenticatedException());
  }
}
