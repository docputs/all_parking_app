part of 'parking_lot_selector_bloc.dart';

@freezed
abstract class ParkingLotSelectorEvent with _$ParkingLotSelectorEvent {
  const factory ParkingLotSelectorEvent.started() = _Started;
}