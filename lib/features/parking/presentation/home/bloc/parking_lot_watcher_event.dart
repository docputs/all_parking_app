part of 'parking_lot_watcher_bloc.dart';

@freezed
abstract class ParkingLotWatcherEvent with _$ParkingLotWatcherEvent {
  const factory ParkingLotWatcherEvent.watchStarted() = _WatchStarted;
  const factory ParkingLotWatcherEvent.updateReceived(Either<ParkingFailure, KtList<ParkingLot>> either) = _UpdateReceived;
}
