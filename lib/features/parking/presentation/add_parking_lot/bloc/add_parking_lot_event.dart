part of 'add_parking_lot_bloc.dart';

@freezed
abstract class AddParkingLotEvent with _$AddParkingLotEvent {
  const factory AddParkingLotEvent.started() = _Started;
  const factory AddParkingLotEvent.changedTitle(String input) = _ChangedTitle;
  const factory AddParkingLotEvent.changedAddress(String input) = _ChangedAddress;
  const factory AddParkingLotEvent.changedCep(String input) = _ChangedCep;
  const factory AddParkingLotEvent.changedAvailableSpots(String input) = _ChangedAvailableSpots;
  const factory AddParkingLotEvent.changedPricePerHour(String input) = _ChangedPricePerHour;
  const factory AddParkingLotEvent.submitParkingLot() = _SubmitParkingLot;
}
