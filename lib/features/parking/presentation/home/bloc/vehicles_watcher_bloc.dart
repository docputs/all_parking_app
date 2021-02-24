import 'dart:async';

import 'package:all_parking/features/parking/domain/entities/parking_lot.dart';
import 'package:all_parking/features/parking/domain/usecases/watch_active_vehicles.dart';
import 'package:all_parking/features/parking/presentation/reports/view_models/reports_view_model.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../core/errors/parking_failure.dart';

part 'vehicles_watcher_bloc.freezed.dart';
part 'vehicles_watcher_event.dart';
part 'vehicles_watcher_state.dart';

@injectable
class VehiclesWatcherBloc extends Bloc<VehiclesWatcherEvent, VehiclesWatcherState> {
  final WatchActiveVehicles _watchActiveVehicles;

  VehiclesWatcherBloc(this._watchActiveVehicles) : super(_Initial());

  StreamSubscription<Either<ParkingFailure, ParkedVehiclesList>> _subscription;

  @override
  Stream<VehiclesWatcherState> mapEventToState(VehiclesWatcherEvent event) async* {
    yield* event.when(watchStarted: _mapWatchStarted, updateReceived: _mapUpdateReceived);
  }

  Stream<VehiclesWatcherState> _mapWatchStarted(ParkingLot parkingLot, VehicleListType listType) async* {
    yield VehiclesWatcherState.loading();
    _subscription = listType == VehicleListType.active
        ? _watchActiveVehicles(parkingLot).listen((event) => add(VehiclesWatcherEvent.updateReceived(event)))
        : _watchActiveVehicles(parkingLot).listen((event) => add(VehiclesWatcherEvent.updateReceived(event)));
  }

  Stream<VehiclesWatcherState> _mapUpdateReceived(Either<ParkingFailure, ParkedVehiclesList> either) async* {
    yield either.fold(
      (f) => VehiclesWatcherState.error(f),
      (vehicles) => VehiclesWatcherState.success(vehicles),
    );
  }

  @override
  Future<void> close() => Future.wait([super.close(), _subscription?.cancel()]);
}
