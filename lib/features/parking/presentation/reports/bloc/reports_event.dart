part of 'reports_bloc.dart';

@freezed
abstract class ReportsEvent with _$ReportsEvent {
  const factory ReportsEvent.initialized(ParkingLot parkingLot) = _Initialized;
  const factory ReportsEvent.dateSelected(DateTime dateTime) = _DateSelected;
}
