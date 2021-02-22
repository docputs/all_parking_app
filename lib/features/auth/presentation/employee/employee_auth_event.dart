part of 'employee_auth_bloc.dart';

@freezed
abstract class EmployeeAuthEvent with _$EmployeeAuthEvent {
  const factory EmployeeAuthEvent.authCheckRequested() = _AuthCheckRequested;
  const factory EmployeeAuthEvent.tryAutoSignIn() = _TryAutoSignIn;
  const factory EmployeeAuthEvent.signedOut() = _SignedOut;
}
