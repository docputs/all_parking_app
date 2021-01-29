part of 'parking_lot_watcher_bloc.dart';

@freezed
abstract class ParkingLotWatcherState with _$ParkingLotWatcherState {
  const factory ParkingLotWatcherState.initial() = _Initial;
  const factory ParkingLotWatcherState.loading() = _Loading;
  const factory ParkingLotWatcherState.success(KtList<ParkingLot> parkingLots) = _Success;
  const factory ParkingLotWatcherState.error(ParkingFailure failure) = _Error;
}
