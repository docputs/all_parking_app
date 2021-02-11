import 'dart:async';

import '../../../core/errors/parking_failure.dart';
import '../../../domain/entities/parked_vehicle.dart';
import '../../../domain/usecases/check_out_vehicle.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'check_out_event.dart';
part 'check_out_state.dart';
part 'check_out_bloc.freezed.dart';

@injectable
class CheckOutBloc extends Bloc<CheckOutEvent, CheckOutState> {
  final CheckOutVehicle _checkOutVehicle;

  CheckOutBloc(this._checkOutVehicle) : super(_Initial());

  @override
  Stream<CheckOutState> mapEventToState(CheckOutEvent event) async* {
    yield* event.when(
      submitted: (vehicle) async* {
        yield CheckOutState.loading();
        final failureOrSuccess = await _checkOutVehicle(vehicle);
        yield failureOrSuccess.fold(
          (f) => CheckOutState.error(f),
          (_) => const CheckOutState.success(),
        );
      },
    );
  }
}
