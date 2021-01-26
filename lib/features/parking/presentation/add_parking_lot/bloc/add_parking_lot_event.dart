part of 'add_parking_lot_bloc.dart';

@freezed
abstract class AddParkingLotEvent with _$AddParkingLotEvent {
  const factory AddParkingLotEvent.changedTitle(String input) = _ChangedTitle;
  const factory AddParkingLotEvent.changedCep(String input) = _ChangedCep;
  const factory AddParkingLotEvent.changedAvailableSpots(String input) = _ChangedAvailableSpots;
  const factory AddParkingLotEvent.changedPricePerHour(String input) = _ChangedPricePerHour;
  const factory AddParkingLotEvent.parkingLotSubmitted() = _ParkingLotSubmitted;
}
