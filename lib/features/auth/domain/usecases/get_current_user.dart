import 'package:all_parking/app_config.dart';
import 'package:all_parking/features/auth/domain/repositories/i_employee_auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../core/errors/auth_failure.dart';
import '../entities/user.dart';
import '../repositories/i_manager_auth_repository.dart';

@lazySingleton
class GetCurrentUser {
  final IManagerAuthRepository _managerAuthRepository;
  final IEmployeeAuthRepository _employeeAuthRepository;

  const GetCurrentUser(this._managerAuthRepository, this._employeeAuthRepository);

  Future<Either<AuthFailure, User>> call() async {
    final userOption =
        AppConfig.isManager ? await _managerAuthRepository.getCurrentManager() : await _employeeAuthRepository.getCurrentEmployee();
    return userOption.fold(
      () => left(AuthFailure.notAuthenticated()),
      (user) => right(user),
    );
  }
}
