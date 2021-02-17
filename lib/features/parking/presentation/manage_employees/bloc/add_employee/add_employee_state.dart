part of 'add_employee_bloc.dart';

@freezed
abstract class AddEmployeeState with _$AddEmployeeState {
  @Implements(ValidationFormState)
  const factory AddEmployeeState({
    @required Employee employee,
    @required bool isSubmitting,
    @required Option<Either<AuthFailure, Unit>> saveFailureOrSuccessOption,
    @required bool showErrorMessages,
  }) = _AddEmployeeState;

  factory AddEmployeeState.initial() => AddEmployeeState(
        employee: Employee.empty(),
        isSubmitting: false,
        saveFailureOrSuccessOption: none(),
        showErrorMessages: false,
      );
}
