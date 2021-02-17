part of 'manage_employees_bloc.dart';

@freezed
abstract class ManageEmployeesEvent with _$ManageEmployeesEvent {
  const factory ManageEmployeesEvent.started() = _Started;
}
