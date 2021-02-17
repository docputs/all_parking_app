import 'package:all_parking/features/auth/core/errors/auth_failure.dart';
import 'package:all_parking/features/auth/domain/repositories/i_user_repository.dart';
import 'package:all_parking/features/parking/domain/entities/employee.dart';
import 'package:all_parking/features/parking/domain/entities/manager.dart';
import 'package:all_parking/features/parking/domain/repositories/i_manager_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

@lazySingleton
class SignUpEmployee {
  final IUserRepository _userRepository;
  final IManagerRepository _managerRepository;

  const SignUpEmployee(this._userRepository, this._managerRepository) : assert(_userRepository != null, _managerRepository != null);

  Future<Either<AuthFailure, Unit>> call(Employee employee) async {
    final userOption = await _userRepository.getCurrentUser();
    final manager = userOption.getOrElse(() => null) as Manager;
    final newManager = manager.copyWith(employees: manager.employees.plusElement(employee));
    final either = await _managerRepository.update(newManager);
    return either.fold(
      (f) => left(AuthFailure.notAuthenticated()),
      (_) => _userRepository.addEmployee(employee),
    );
  }
}
