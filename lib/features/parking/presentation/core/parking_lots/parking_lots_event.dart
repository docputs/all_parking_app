part of 'parking_lots_bloc.dart';

@freezed
abstract class ParkingLotsEvent with _$ParkingLotsEvent {
  const factory ParkingLotsEvent.fetchRequested() = _FetchRequested;
}
