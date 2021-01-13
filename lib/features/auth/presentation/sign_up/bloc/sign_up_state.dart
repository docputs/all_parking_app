part of 'sign_up_bloc.dart';

@freezed
abstract class SignUpState with _$SignUpState {
  const factory SignUpState({
    @required String displayName,
    @required String email,
    @required String password,
    @required bool isSubmitting,
    @required bool showErrorMessages,
    @required Option<Either<AuthFailure, Unit>> signUpSuccessOrFailureOption,
  }) = _SignUpState;

  factory SignUpState.initial() => SignUpState(
        displayName: '',
        email: '',
        password: '',
        isSubmitting: false,
        showErrorMessages: false,
        signUpSuccessOrFailureOption: none(),
      );
}
