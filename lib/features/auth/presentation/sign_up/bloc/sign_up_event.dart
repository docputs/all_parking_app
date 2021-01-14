part of 'sign_up_bloc.dart';

@freezed
abstract class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.firstNameChanged(String input) = _FirstNameChanged;
  const factory SignUpEvent.lastNameChanged(String input) = _LastNameChanged;
  const factory SignUpEvent.emailChanged(String input) = _EmailChanged;
  const factory SignUpEvent.passwordChanged(String input) = _PasswordChanged;
  const factory SignUpEvent.signUpPressed() = _SignUpPressed;
}
