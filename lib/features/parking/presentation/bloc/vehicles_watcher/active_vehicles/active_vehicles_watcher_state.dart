part of 'active_vehicles_watcher_bloc.dart';

@freezed
abstract class ActiveVehiclesWatcherState with _$ActiveVehiclesWatcherState {
  const factory ActiveVehiclesWatcherState.initial() = _Initial;
}
