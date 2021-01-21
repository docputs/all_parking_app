part of 'home_bloc.dart';

@freezed
abstract class HomeEvent with _$HomeEvent {
  const factory HomeEvent.watchAllStarted() = _WatchAllStarted;
  const factory HomeEvent.updateReceived(Either<ParkingFailure, List<ParkingLot>> either) = _UpdateReceived;
}
