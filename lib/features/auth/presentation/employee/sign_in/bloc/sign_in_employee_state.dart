part of 'sign_in_employee_bloc.dart';

@freezed
abstract class SignInEmployeeState with _$SignInEmployeeState {
  const factory SignInEmployeeState({
    @required String token,
    @required bool isSubmitting,
    @required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
    @required bool showErrorMessages,
  }) = _SignInEmployeeState;

  factory SignInEmployeeState.initial() => SignInEmployeeState(
        token: '',
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
        showErrorMessages: false,
      );
}
