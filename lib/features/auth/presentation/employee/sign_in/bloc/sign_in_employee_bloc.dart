import 'dart:async';

import 'package:all_parking/features/auth/core/errors/auth_failure.dart';
import 'package:all_parking/features/auth/domain/usecases/sign_in_employee.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_in_employee_event.dart';
part 'sign_in_employee_state.dart';
part 'sign_in_employee_bloc.freezed.dart';

@injectable
class SignInEmployeeBloc extends Bloc<SignInEmployeeEvent, SignInEmployeeState> {
  final SignInEmployee _signInEmployee;

  SignInEmployeeBloc(this._signInEmployee) : super(SignInEmployeeState.initial());

  @override
  Stream<SignInEmployeeState> mapEventToState(SignInEmployeeEvent event) async* {
    yield* event.when(
      changedToken: _mapChangedToken,
      submitted: _mapSubmitted,
    );
  }

  Stream<SignInEmployeeState> _mapChangedToken(String input) async* {
    yield state.copyWith(
      token: input,
      authFailureOrSuccessOption: none(),
    );
  }

  Stream<SignInEmployeeState> _mapSubmitted() async* {
    Either<AuthFailure, Unit> failureOrSuccess;

    yield state.copyWith(
      isSubmitting: true,
      authFailureOrSuccessOption: none(),
    );

    if (state.token.isNotEmpty) failureOrSuccess = await _signInEmployee(state.token);

    yield state.copyWith(
      isSubmitting: false,
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
      showErrorMessages: true,
    );
  }
}
