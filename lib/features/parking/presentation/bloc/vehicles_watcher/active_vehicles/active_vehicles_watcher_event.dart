part of 'active_vehicles_watcher_bloc.dart';

@freezed
abstract class ActiveVehiclesWatcherEvent with _$ActiveVehiclesWatcherEvent {
  const factory ActiveVehiclesWatcherEvent.started() = _Started;
}