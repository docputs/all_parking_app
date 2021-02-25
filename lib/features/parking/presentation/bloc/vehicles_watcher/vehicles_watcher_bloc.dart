import 'dart:async';

import 'package:all_parking/features/parking/core/errors/parking_failure.dart';
import 'package:all_parking/features/parking/domain/entities/parked_vehicles_list.dart';
import 'package:all_parking/features/parking/domain/entities/parking_lot.dart';
import 'package:all_parking/features/parking/domain/usecases/i_watch_vehicles.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../current_parking_lot.dart';

part 'vehicles_watcher_bloc.freezed.dart';
part 'vehicles_watcher_event.dart';
part 'vehicles_watcher_state.dart';

abstract class VehiclesWatcherBloc<T extends ParkedVehiclesList> extends Bloc<VehiclesWatcherEvent, VehiclesWatcherState> {
  final IWatchVehicles _watchVehicles;
  final CurrentParkingLot _currentParkingLot;

  VehiclesWatcherBloc(this._watchVehicles, this._currentParkingLot) : super(_Initial());

  StreamSubscription<Either<ParkingFailure, T>> _subscription;

  @override
  Stream<VehiclesWatcherState> mapEventToState(VehiclesWatcherEvent event) async* {
    yield* event.when(watchStarted: _mapWatchStarted, updateReceived: _mapUpdateReceived);
  }

  Stream<VehiclesWatcherState> _mapWatchStarted(ParkingLot parkingLot) async* {
    final currentParkingLot = parkingLot ?? _currentParkingLot.value.getOrElse(() => null);
    yield VehiclesWatcherState.loading();
    _subscription = _watchVehicles(currentParkingLot).listen((event) => add(VehiclesWatcherEvent.updateReceived(event)));
  }

  Stream<VehiclesWatcherState> _mapUpdateReceived(Either<ParkingFailure, T> either) async* {
    yield either.fold(
      (f) => VehiclesWatcherState.error(f),
      (vehicles) => VehiclesWatcherState.success(vehicles),
    );
  }

  @override
  Future<void> close() => Future.wait([super.close(), _subscription?.cancel()]);
}
