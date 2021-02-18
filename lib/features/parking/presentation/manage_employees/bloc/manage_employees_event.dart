part of 'manage_employees_bloc.dart';

@freezed
abstract class ManageEmployeesEvent with _$ManageEmployeesEvent {
  const factory ManageEmployeesEvent.fetchRequested() = _FetchRequested;
  const factory ManageEmployeesEvent.deleted(Employee employee) = _Deleted;
}
