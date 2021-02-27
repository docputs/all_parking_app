import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../utils/cep_service.dart';
import '../../../../../utils/input_converter.dart';
import '../../../../../utils/validators.dart';
import '../../../../../widgets/validation_form_state.dart';
import '../../../core/errors/parking_failure.dart';
import '../../../domain/entities/parking_lot.dart';
import '../../../domain/usecases/add_parking_lot.dart';
import '../../../domain/usecases/edit_parking_lot.dart';
import '../../current_parking_lot.dart';

part 'add_parking_lot_bloc.freezed.dart';
part 'add_parking_lot_event.dart';
part 'add_parking_lot_state.dart';

@injectable
class AddParkingLotBloc extends Bloc<AddParkingLotEvent, AddParkingLotState> {
  final AddParkingLot _addParkingLot;
  final EditParkingLot _editParkingLot;
  final CepService _cepService;
  final CurrentParkingLot _currentParkingLot;

  AddParkingLotBloc(this._addParkingLot, this._editParkingLot, this._cepService, this._currentParkingLot)
      : super(AddParkingLotState.initial());

  @override
  Stream<AddParkingLotState> mapEventToState(AddParkingLotEvent event) async* {
    yield* event.map(
      started: (e) async* {
        yield e.initialParkingLotOption.fold(
          () => state,
          (initialParkingLot) => state.copyWith(parkingLot: initialParkingLot, isEditing: true),
        );
      },
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
        if (e.input.length == 9) {
          final cepResponse = await _cepService.getCep(e.input);
          if (cepResponse == null) return;
          final newAddress = _cepService.convertFromCepResponse(cepResponse);
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
          failureOrSuccess = state.isEditing ? await _editParkingLot(state.parkingLot) : await _addParkingLot(state.parkingLot);
          failureOrSuccess.fold((l) {}, (_) => _currentParkingLot.setValue(state.parkingLot));
        }

        yield state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
