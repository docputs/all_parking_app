import 'dart:async';

import 'package:all_parking/features/parking/domain/entities/parked_vehicle.dart';
import 'package:all_parking/features/parking/domain/entities/parking_lot.dart';
import 'package:all_parking/features/parking/domain/usecases/watch_parked_vehicles.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

import '../../../core/errors/parking_failure.dart';

part 'vehicles_watcher_bloc.freezed.dart';
part 'vehicles_watcher_event.dart';
part 'vehicles_watcher_state.dart';

@injectable
class VehiclesWatcherBloc extends Bloc<VehiclesWatcherEvent, VehiclesWatcherState> {
  final WatchParkedVehicles _watchParkedVehicles;

  VehiclesWatcherBloc(this._watchParkedVehicles) : super(_Initial());

  StreamSubscription<Either<ParkingFailure, KtList<ParkedVehicle>>> _subscription;

  @override
  Stream<VehiclesWatcherState> mapEventToState(VehiclesWatcherEvent event) async* {
    yield* event.when(watchStarted: _mapWatchStarted, updateReceived: _mapUpdateReceived);
  }

  Stream<VehiclesWatcherState> _mapWatchStarted(ParkingLot parkingLot) async* {
    yield VehiclesWatcherState.loading();
    _subscription = _watchParkedVehicles(parkingLot).listen((event) => add(VehiclesWatcherEvent.updateReceived(event)));
  }

  Stream<VehiclesWatcherState> _mapUpdateReceived(Either<ParkingFailure, KtList<ParkedVehicle>> either) async* {
    yield either.fold(
      (f) => VehiclesWatcherState.error(f),
      (vehicles) => VehiclesWatcherState.success(vehicles),
    );
  }

  @override
  Future<void> close() => Future.wait([super.close(), _subscription?.cancel()]);
}
