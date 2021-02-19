part of 'sign_in_bloc.dart';

@freezed
abstract class SignInState with _$SignInState {
  factory SignInState({
    @required String email,
    @required String password,
    @required bool isSubmitting,
    @required bool showErrorMessages,
    @required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _SignInState;

  factory SignInState.initial() => SignInState(
        email: '',
        password: '',
        isSubmitting: false,
        showErrorMessages: false,
        authFailureOrSuccessOption: none(),
      );
}
