part of 'vehicles_watcher_bloc.dart';

@freezed
abstract class VehiclesWatcherState with _$VehiclesWatcherState {
  const factory VehiclesWatcherState.initial() = _Initial;
  const factory VehiclesWatcherState.loading() = _Loading;
  const factory VehiclesWatcherState.success(ParkedVehiclesList vehicles) = _Success;
  const factory VehiclesWatcherState.error(ParkingFailure failure) = _Error;
}
