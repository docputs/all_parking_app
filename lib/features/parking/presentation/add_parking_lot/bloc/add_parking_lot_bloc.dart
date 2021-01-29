import 'dart:async';

import 'package:all_parking/features/auth/presentation/sign_up/bloc/sign_up_bloc.dart';
import 'package:all_parking/features/parking/core/errors/parking_failure.dart';
import 'package:all_parking/features/parking/domain/entities/parking_lot.dart';
import 'package:all_parking/features/parking/domain/usecases/add_parking_lot.dart';
import 'package:all_parking/service_locator.dart';
import 'package:all_parking/utils/cep_service.dart';
import 'package:all_parking/utils/input_converter.dart';
import 'package:all_parking/utils/validators.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../current_parking_lot.dart';

part 'add_parking_lot_bloc.freezed.dart';
part 'add_parking_lot_event.dart';
part 'add_parking_lot_state.dart';

@injectable
class AddParkingLotBloc extends Bloc<AddParkingLotEvent, AddParkingLotState> {
  final AddParkingLot _addParkingLot;

  AddParkingLotBloc(this._addParkingLot) : super(AddParkingLotState.initial());

  final _currentParkingLot = getIt<CurrentParkingLot>();

  @override
  Stream<AddParkingLotState> mapEventToState(AddParkingLotEvent event) async* {
    yield* event.map(
      changedAvailableSpots: (e) async* {
        final parsedInputOption = InputConverter.stringToInteger(e.input);
        yield parsedInputOption.fold(
          () => state,
          (parsedInput) {
            return state.copyWith(
              parkingLot: state.parkingLot.copyWith(availableSpots: parsedInput),
              saveFailureOrSuccessOption: none(),
            );
          },
        );
      },
      changedCep: (e) async* {
        if (e.input.length == 8) {
          final cepResponse = await CepService.getCep(e.input);
          if (cepResponse == null) return;
          final newAddress = CepService.convertFromCepResponse(cepResponse);
          yield state.copyWith(
            parkingLot: state.parkingLot.copyWith(address: newAddress),
            saveFailureOrSuccessOption: none(),
          );
        }
      },
      changedPricePerHour: (e) async* {
        final parsedInputOption = InputConverter.stringToDouble(e.input);
        yield parsedInputOption.fold(
          () => state,
          (parsedInput) {
            return state.copyWith(
              parkingLot: state.parkingLot.copyWith(pricePerHour: parsedInput),
              saveFailureOrSuccessOption: none(),
            );
          },
        );
      },
      changedTitle: (e) async* {
        yield state.copyWith(
          parkingLot: state.parkingLot.copyWith(title: e.input),
          saveFailureOrSuccessOption: none(),
        );
      },
      parkingLotSubmitted: (e) async* {
        Either<ParkingFailure, Unit> failureOrSuccess;

        yield state.copyWith(
          isSubmitting: true,
          saveFailureOrSuccessOption: none(),
        );

        if (Validators.isValidCep(state.parkingLot.address.cep) &&
            Validators.isValidAvailableSpots(state.parkingLot.availableSpots.toString()) &&
            Validators.isValidParkingLotTitle(state.parkingLot.title) &&
            Validators.isValidPricePerHour(state.parkingLot.pricePerHour.toString())) {
          failureOrSuccess = await _addParkingLot(state.parkingLot);
        }

        failureOrSuccess.fold((l) {}, (_) => _currentParkingLot.value = optionOf(state.parkingLot));

        yield state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
