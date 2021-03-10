part of 'inactive_vehicles_watcher_bloc.dart';

@freezed
abstract class InactiveVehiclesWatcherEvent with _$InactiveVehiclesWatcherEvent {
  const factory InactiveVehiclesWatcherEvent.started() = _Started;
}