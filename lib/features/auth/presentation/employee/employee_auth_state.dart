part of 'employee_auth_bloc.dart';

@freezed
abstract class EmployeeAuthState with _$EmployeeAuthState {
  const factory EmployeeAuthState.initial() = _Initial;
  const factory EmployeeAuthState.authenticated() = _Authenticated;
  const factory EmployeeAuthState.unauthenticated() = _Unauthenticated;
}
