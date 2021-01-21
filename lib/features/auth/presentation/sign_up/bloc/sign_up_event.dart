part of 'sign_up_bloc.dart';

@freezed
abstract class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.firstNameChanged(String value) = _FirstNameChanged;
  const factory SignUpEvent.lastNameChanged(String value) = _LastNameChanged;
  const factory SignUpEvent.emailChanged(String value) = _EmailChanged;
  const factory SignUpEvent.passwordChanged(String value) = _PasswordChanged;
  const factory SignUpEvent.confirmPasswordChanged(String value) = _ConfirmPasswordChanged;
  const factory SignUpEvent.signUpPressed() = _SignUpPressed;
}
