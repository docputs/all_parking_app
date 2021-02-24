part of 'vehicles_watcher_bloc.dart';

enum VehicleListType { active, inactive }

@freezed
abstract class VehiclesWatcherEvent with _$VehiclesWatcherEvent {
  const factory VehiclesWatcherEvent.watchStarted({
    @required ParkingLot parkingLot,
    @required VehicleListType listType,
  }) = _WatchStarted;
  const factory VehiclesWatcherEvent.updateReceived(Either<ParkingFailure, ParkedVehiclesList> either) = _UpdateReceived;
}
