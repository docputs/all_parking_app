part of 'check_in_bloc.dart';

@freezed
abstract class CheckInState with _$CheckInState {
  @Implements(ValidationFormState)
  const factory CheckInState({
    @required ParkedVehicle vehicle,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required Option<Either<ParkingFailure, Unit>> saveFailureOrSuccessOption,
  }) = _CheckInState;

  factory CheckInState.initial() => CheckInState(
    vehicle: ParkedVehicle.empty(),
    showErrorMessages: false,
    isSubmitting: false,
    saveFailureOrSuccessOption: none(),
  );
}
