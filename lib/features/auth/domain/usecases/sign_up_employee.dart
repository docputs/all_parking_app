import 'package:all_parking/features/parking/core/errors/parking_failure.dart';
import 'package:all_parking/features/parking/domain/entities/employee.dart';
import 'package:all_parking/features/parking/domain/entities/manager.dart';
import 'package:all_parking/features/parking/domain/repositories/i_employee_repository.dart';
import 'package:all_parking/features/parking/domain/repositories/i_manager_repository.dart';
import 'package:all_parking/features/parking/domain/usecases/fetch_current_manager.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

@lazySingleton
class SignUpEmployee {
  final FetchCurrentManager _fetchCurrentManager;
  final IEmployeeRepository _employeeRepository;
  final IManagerRepository _managerRepository;

  const SignUpEmployee(this._fetchCurrentManager, this._employeeRepository, this._managerRepository);

  Future<Either<ParkingFailure, Unit>> call(Employee employee) async {
    final managerEither = await _fetchCurrentManager();
    return managerEither.fold(
      (f) => left(f),
      (manager) => _caseFetchManagerSuccess(manager, employee),
    );
  }

  Future<Either<ParkingFailure, Unit>> _caseFetchManagerSuccess(Manager manager, Employee employee) async {
    final newManager = manager.copyWith(employees: manager.employees.plusElement(employee));
    final either = await _managerRepository.update(newManager);
    return either.fold(
      (f) => left(f),
      (_) => _employeeRepository.create(employee),
    );
  }
}
