part of 'vehicles_watcher_bloc.dart';

@freezed
abstract class VehiclesWatcherEvent with _$VehiclesWatcherEvent {
  const factory VehiclesWatcherEvent.watchStarted(ParkingLot parkingLot) = _WatchStarted;
  const factory VehiclesWatcherEvent.updateReceived(Either<ParkingFailure, KtList<ParkedVehicle>> either) = _UpdateReceived;
}
