import 'package:freezed_annotation/freezed_annotation.dart';

part 'parking_lots_event.freezed.dart';

@freezed
abstract class ParkingLotsEvent with _$ParkingLotsEvent {
  const factory ParkingLotsEvent.fetchRequested() = _FetchRequested;
}
