part of 'parking_lot_selector_bloc.dart';

@freezed
abstract class ParkingLotSelectorState with _$ParkingLotSelectorState {
  const factory ParkingLotSelectorState.initial() = _Initial;
  const factory ParkingLotSelectorState.loading() = _Loading;
  const factory ParkingLotSelectorState.success(List<ParkingLot> parkingLots) = _Success;
  const factory ParkingLotSelectorState.error(ParkingFailure failure) = _Error;
}
