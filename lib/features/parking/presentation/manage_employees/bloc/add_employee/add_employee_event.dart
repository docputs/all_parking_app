part of 'add_employee_bloc.dart';

@freezed
abstract class AddEmployeeEvent with _$AddEmployeeEvent {
  const factory AddEmployeeEvent.changedName(String input) = _ChangedName;
  const factory AddEmployeeEvent.changedCpf(String input) = _ChangedCpf;
  const factory AddEmployeeEvent.changedPhoneNumber(String input) = _ChangedPhoneNumber;
  const factory AddEmployeeEvent.changedParkingLot(ParkingLot parkingLot) = _ChangedParkingLot;
  const factory AddEmployeeEvent.submitted() = _Submitted;
}
