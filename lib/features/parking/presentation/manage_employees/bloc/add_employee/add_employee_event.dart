part of 'add_employee_bloc.dart';

@freezed
abstract class AddEmployeeEvent with _$AddEmployeeEvent {
  const factory AddEmployeeEvent.changedName(String input) = _ChangedName;
  const factory AddEmployeeEvent.changedParkingLot(ParkingLot parkingLot) = _ChangedParkingLot;
  const factory AddEmployeeEvent.submitted() = _Submitted;
}
