part of 'home_bloc.dart';

@freezed
abstract class HomeEvent with _$HomeEvent {
  const factory HomeEvent.fetchRequested() = _FetchRequested;
  const factory HomeEvent.watchStarted(ParkingLot parkingLot) = _WatchStarted;
  const factory HomeEvent.updateReceived(Either<ParkingFailure, ParkingLot> either) = _UpdateReceived;
}
