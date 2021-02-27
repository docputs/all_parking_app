part of 'inactive_vehicles_watcher_bloc.dart';

@freezed
abstract class InactiveVehiclesWatcherState with _$InactiveVehiclesWatcherState {
  const factory InactiveVehiclesWatcherState.initial() = _Initial;
}
