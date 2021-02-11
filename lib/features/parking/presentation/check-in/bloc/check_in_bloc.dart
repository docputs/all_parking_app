import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../utils/validators.dart';
import '../../../../auth/presentation/sign_up/bloc/sign_up_bloc.dart';
import '../../../core/errors/parking_failure.dart';
import '../../../core/util/qr_code_scanner.dart';
import '../../../domain/entities/parked_vehicle.dart';
import '../../../domain/usecases/check_in_vehicle.dart';

part 'check_in_bloc.freezed.dart';
part 'check_in_event.dart';
part 'check_in_state.dart';

@injectable
class CheckInBloc extends Bloc<CheckInEvent, CheckInState> {
  final CheckInVehicle _checkInVehicle;

  CheckInBloc(this._checkInVehicle) : super(CheckInState.initial());

  @override
  Stream<CheckInState> mapEventToState(CheckInEvent event) async* {
    yield* event.when(
      changedLicensePlate: (input) async* {
        yield state.copyWith(
          vehicle: state.vehicle.copyWith(licensePlate: input.toUpperCase()),
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
      submitted: (confirmSubmit, context) async* {
        Either<ParkingFailure, Unit> failureOrSuccess;

        if (isFormValid()) {
          _dismissKeyboard(context);
          final confirmDialogResult = await confirmSubmit(context);
          if (confirmDialogResult) {
            yield state.copyWith(isSubmitting: true, saveFailureOrSuccessOption: none());
            final qrCodeOption = await QRCodeScanner.scan();
            await qrCodeOption.fold(
              () => null,
              (qrCode) async => failureOrSuccess = await _checkInVehicle(state.vehicle.copyWith(id: qrCode)),
            );
          }
        }

        yield state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }

  void _dismissKeyboard(BuildContext context) {
    final currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus) currentFocus.unfocus();
  }

  bool isFormValid() {
    if (Validators.isValidVehicleLabel(state.vehicle.title) &&
        Validators.isValidLicensePlate(state.vehicle.licensePlate) &&
        Validators.isValidObservations(state.vehicle.observations) &&
        Validators.isValidCpf(state.vehicle.ownerData.cpf))
      return true;
    else
      return false;
  }
}
