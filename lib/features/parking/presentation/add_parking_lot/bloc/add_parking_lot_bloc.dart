import 'dart:async';

import 'package:all_parking/features/auth/presentation/sign_up/bloc/sign_up_bloc.dart';
import 'package:all_parking/features/parking/core/errors/parking_failure.dart';
import 'package:all_parking/features/parking/domain/entities/parking_lot.dart';
import 'package:all_parking/features/parking/domain/usecases/add_parking_lot.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'add_parking_lot_bloc.freezed.dart';
part 'add_parking_lot_event.dart';
part 'add_parking_lot_state.dart';

@injectable
class AddParkingLotBloc extends Bloc<AddParkingLotEvent, AddParkingLotState> {
  final AddParkingLot _addParkingLot;

  AddParkingLotBloc(this._addParkingLot) : super(AddParkingLotState.initial());

  @override
  Stream<AddParkingLotState> mapEventToState(AddParkingLotEvent event) async* {
    yield* event.map(
      started: (e) async* {
        yield state;
      },
      changedAddress: (e) async* {
        yield state.copyWith(
          parkingLot: state.parkingLot.copyWith(address: e.input),
          saveFailureOrSuccessOption: none(),
        );
      },
      changedAvailableSpots: (e) async* {
        yield state.copyWith(
          parkingLot: state.parkingLot.copyWith(availableSpots: int.parse(e.input)),
          saveFailureOrSuccessOption: none(),
        );
      },
      changedCep: (e) async* {
        yield state.copyWith(
          parkingLot: state.parkingLot.copyWith(cep: e.input),
          saveFailureOrSuccessOption: none(),
        );
      },
      changedPricePerHour: (e) async* {
        yield state.copyWith(
          parkingLot: state.parkingLot.copyWith(pricePerHour: double.parse(e.input)),
          saveFailureOrSuccessOption: none(),
        );
      },
      changedTitle: (e) async* {
        yield state.copyWith(
          parkingLot: state.parkingLot.copyWith(title: e.input),
          saveFailureOrSuccessOption: none(),
        );
      },
      submitParkingLot: (e) async* {
        yield state.copyWith(
          isSubmitting: true,
          saveFailureOrSuccessOption: none(),
        );

        //TODO: implement validation
        final failureOrSuccess = await _addParkingLot(state.parkingLot);

        yield state.copyWith(
          isSubmitting: false,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
