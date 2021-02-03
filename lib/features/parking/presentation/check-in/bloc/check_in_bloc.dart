import 'dart:async';

import 'package:all_parking/features/auth/presentation/sign_up/bloc/sign_up_bloc.dart';
import 'package:all_parking/features/parking/core/errors/parking_failure.dart';
import 'package:all_parking/features/parking/domain/entities/parked_vehicle.dart';
import 'package:all_parking/features/parking/domain/usecases/check_in_vehicle.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'check_in_event.dart';
part 'check_in_state.dart';
part 'check_in_bloc.freezed.dart';

@injectable
class CheckInBloc extends Bloc<CheckInEvent, CheckInState> {
  final CheckInVehicle _checkInVehicle;

  CheckInBloc(this._checkInVehicle) : super(CheckInState.initial());

  @override
  Stream<CheckInState> mapEventToState(CheckInEvent event) async* {
    yield* event.when(
      changedLicensePlate: (input) async* {
        yield state.copyWith(
          vehicle: state.vehicle.copyWith(licensePlate: input),
          saveFailureOrSuccessOption: none(),
        );
      },
      changedLabel: (input) async* {
        yield state.copyWith(
          vehicle: state.vehicle.copyWith(title: input),
          saveFailureOrSuccessOption: none(),
        );
      },
      changedColor: (input) async* {
        yield state.copyWith(
          vehicle: state.vehicle.copyWith(color: input),
          saveFailureOrSuccessOption: none(),
        );
      },
      changedVehicleType: (input) async* {
        yield state.copyWith(
          vehicle: state.vehicle.copyWith(type: input),
          saveFailureOrSuccessOption: none(),
        );
      },
      changedObservations: (input) async* {
        yield state.copyWith(
          vehicle: state.vehicle.copyWith(observations: input),
          saveFailureOrSuccessOption: none(),
        );
      },
      changedOwnerName: (input) async* {
        yield state.copyWith(
          vehicle: state.vehicle.copyWith(ownerData: state.vehicle.ownerData.copyWith(name: input)),
          saveFailureOrSuccessOption: none(),
        );
      },
      changedOwnerPhone: (input) async* {
        yield state.copyWith(
          vehicle: state.vehicle.copyWith(ownerData: state.vehicle.ownerData.copyWith(phoneNumber: input)),
          saveFailureOrSuccessOption: none(),
        );
      },
      changedOwnerCpf: (input) async* {
        yield state.copyWith(
          vehicle: state.vehicle.copyWith(ownerData: state.vehicle.ownerData.copyWith(cpf: input)),
          saveFailureOrSuccessOption: none(),
        );
      },
      submitted: () async* {
        Either<ParkingFailure, Unit> failureOrSuccess;

        yield state.copyWith(
          isSubmitting: true,
          saveFailureOrSuccessOption: none(),
        );

        // failureOrSuccess = await _checkInVehicle(state.vehicle);

        yield state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
