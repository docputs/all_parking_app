import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../utils/input_converter.dart';
import '../../../core/errors/parking_failure.dart';
import '../../../domain/entities/parked_vehicle.dart';
import '../../../domain/usecases/check_out_vehicle.dart';

part 'check_out_bloc.freezed.dart';
part 'check_out_event.dart';
part 'check_out_state.dart';

@injectable
class CheckOutBloc extends Bloc<CheckOutEvent, CheckOutState> {
  final CheckOutVehicle _checkOutVehicle;

  CheckOutBloc(this._checkOutVehicle) : super(CheckOutState.initial());

  @override
  Stream<CheckOutState> mapEventToState(CheckOutEvent event) async* {
    yield* event.when(
      changedPricePerHour: (input) async* {
        final parsedInputOption = InputConverter.stringToDouble(input);
        yield parsedInputOption.fold(
          () => state,
          (input) => state.copyWith(
            overridenPricePerHour: input,
            submitFailureOrSuccessOption: none(),
          ),
        );
      },
      submitted: (vehicle) async* {
        yield state.copyWith(
          isSubmitting: true,
          submitFailureOrSuccessOption: none(),
        );

        var newVehicle = vehicle;
        if (state.overridenPricePerHour != null) newVehicle = vehicle.copyWith(overridenPricePerHour: state.overridenPricePerHour);

        final failureOrSuccess = await _checkOutVehicle(newVehicle);

        yield state.copyWith(
          isSubmitting: false,
          submitFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
