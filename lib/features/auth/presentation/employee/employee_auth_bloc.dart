import 'dart:async';

import 'package:all_parking/features/auth/domain/repositories/i_employee_auth_repository.dart';
import 'package:all_parking/features/auth/domain/usecases/auto_sign_in_employee.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'employee_auth_bloc.freezed.dart';
part 'employee_auth_event.dart';
part 'employee_auth_state.dart';

@injectable
class EmployeeAuthBloc extends Bloc<EmployeeAuthEvent, EmployeeAuthState> {
  final AutoSignInEmployee _autoSignInEmployee;
  final IEmployeeAuthRepository _authRepository;

  EmployeeAuthBloc(this._authRepository, this._autoSignInEmployee) : super(_Initial());

  @override
  Stream<EmployeeAuthState> mapEventToState(EmployeeAuthEvent event) async* {
    yield* event.when(
      authCheckRequested: _mapAuthCheckRequested,
      tryAutoSignIn: _mapTryAutoSignIn,
    );
  }

  Stream<EmployeeAuthState> _mapAuthCheckRequested() async* {
    final employeeOption = await _authRepository.getCurrentEmployee();
    yield employeeOption.fold(
      () => const EmployeeAuthState.unauthenticated(),
      (_) => const EmployeeAuthState.authenticated(),
    );
  }

  Stream<EmployeeAuthState> _mapTryAutoSignIn() async* {
    final signInEither = await _autoSignInEmployee();
    yield signInEither.fold(
      (_) => const EmployeeAuthState.unauthenticated(),
      (_) => const EmployeeAuthState.authenticated(),
    );
  }
}
