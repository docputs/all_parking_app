part of 'sign_up_bloc.dart';

@freezed
abstract class SignUpState with _$SignUpState {
  const factory SignUpState({
    @required String firstName,
    @required String lastName,
    @required String email,
    @required String password,
    @required String confirmPassword,
    @required bool isSubmitting,
    @required bool showErrorMessages,
    @required Option<Either<AuthFailure, Unit>> signUpSuccessOrFailureOption,
  }) = _SignUpState;

  factory SignUpState.initial() => SignUpState(
        firstName: '',
        lastName: '',
        email: '',
        password: '',
        confirmPassword: '',
        isSubmitting: false,
        showErrorMessages: false,
        signUpSuccessOrFailureOption: none(),
      );
}
