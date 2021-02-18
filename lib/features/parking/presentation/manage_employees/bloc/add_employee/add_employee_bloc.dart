import 'dart:async';

import 'package:all_parking/features/auth/core/errors/auth_failure.dart';
import 'package:all_parking/features/auth/domain/usecases/sign_up_employee.dart';
import 'package:all_parking/features/auth/presentation/sign_up/bloc/sign_up_bloc.dart';
import 'package:all_parking/features/parking/domain/entities/employee.dart';
import 'package:all_parking/features/parking/domain/entities/parking_lot.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'add_employee_bloc.freezed.dart';
part 'add_employee_event.dart';
part 'add_employee_state.dart';

@injectable
class AddEmployeeBloc extends Bloc<AddEmployeeEvent, AddEmployeeState> {
  final SignUpEmployee _signUpEmployee;

  AddEmployeeBloc(this._signUpEmployee) : super(AddEmployeeState.initial());

  @override
  Stream<AddEmployeeState> mapEventToState(AddEmployeeEvent event) async* {
    yield* event.when(
      changedName: _mapChangedName,
      changedCpf: _mapChangedCpf,
      changedPhoneNumber: _mapChangedPhoneNumber,
      changedParkingLot: _mapChangedParkingLot,
      submitted: _mapSubmitted,
    );
  }

  Stream<AddEmployeeState> _mapChangedName(String input) async* {
    yield state.copyWith(
      employee: state.employee.copyWith(displayName: input),
      saveFailureOrSuccessOption: none(),
    );
  }

  Stream<AddEmployeeState> _mapChangedCpf(String input) async* {
    yield state.copyWith(
      employee: state.employee.copyWith(cpf: input),
      saveFailureOrSuccessOption: none(),
    );
  }

  Stream<AddEmployeeState> _mapChangedPhoneNumber(String input) async* {
    yield state.copyWith(
      employee: state.employee.copyWith(phoneNumber: input),
      saveFailureOrSuccessOption: none(),
    );
  }

  Stream<AddEmployeeState> _mapChangedParkingLot(ParkingLot parkingLot) async* {
    yield state.copyWith(
      employee: state.employee.copyWith(
        parkingLot: state.employee.parkingLot.copyWith(id: parkingLot.id, title: parkingLot.title),
      ),
      saveFailureOrSuccessOption: none(),
    );
  }

  Stream<AddEmployeeState> _mapSubmitted() async* {
    Either<AuthFailure, Unit> failureOrSuccess;

    yield state.copyWith(
      isSubmitting: true,
      saveFailureOrSuccessOption: none(),
    );

    if (state.employee.isValid()) failureOrSuccess = await _signUpEmployee(state.employee);

    yield state.copyWith(
      isSubmitting: false,
      saveFailureOrSuccessOption: optionOf(failureOrSuccess),
      showErrorMessages: true,
    );
  }
}
