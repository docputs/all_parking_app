part of 'check_out_bloc.dart';

@freezed
abstract class CheckOutState with _$CheckOutState {
  const factory CheckOutState({
    @required @nullable double overridenPricePerHour,
    @required bool isSubmitting,
    @required Option<Either<ParkingFailure, Unit>> submitFailureOrSuccessOption,
  }) = _CheckOutState;

  factory CheckOutState.initial() => CheckOutState(
        overridenPricePerHour: null,
        isSubmitting: false,
        submitFailureOrSuccessOption: none(),
      );
}
