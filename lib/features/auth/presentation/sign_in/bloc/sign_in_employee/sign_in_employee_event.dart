part of 'sign_in_employee_bloc.dart';

@freezed
abstract class SignInEmployeeEvent with _$SignInEmployeeEvent {
  const factory SignInEmployeeEvent.started() = _Started;
}