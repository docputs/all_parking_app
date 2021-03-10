import 'dart:async';

import 'package:all_parking/features/parking/core/errors/parking_failure.dart';
import 'package:all_parking/features/parking/domain/entities/parked_vehicle.dart';
import 'package:all_parking/features/parking/presentation/bloc/vehicles_watcher/active_vehicles/active_vehicles_watcher_bloc.dart';
import 'package:all_parking/features/qr_code/domain/entities/qr_code.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'find_check_out_bloc.freezed.dart';
part 'find_check_out_event.dart';
part 'find_check_out_state.dart';

@injectable
class FindCheckOutBloc extends Bloc<FindCheckOutEvent, FindCheckOutState> {
  FindCheckOutBloc() : super(_Initial());

  @override
  Stream<FindCheckOutState> mapEventToState(FindCheckOutEvent event) async* {
    yield* event.when(started: _mapStarted);
  }

  Stream<FindCheckOutState> _mapStarted(BuildContext context, QRCode code) async* {
    yield FindCheckOutState.loading();
    final currentState = context.read<ActiveVehiclesWatcherBloc>().state;
    final vehicle = currentState.maybeWhen(
      orElse: () => null,
      success: (vehicles) => vehicles.value.find((vehicle) => vehicle.id == code),
    );
    if (vehicle != null)
      yield FindCheckOutState.success(vehicle);
    else
      yield FindCheckOutState.error(ParkingFailure.vehicleNotFound());
  }
}
