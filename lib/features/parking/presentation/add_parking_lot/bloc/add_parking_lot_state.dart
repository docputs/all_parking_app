part of 'add_parking_lot_bloc.dart';

@freezed
abstract class AddParkingLotState with _$AddParkingLotState {
  @Implements(ValidationFormState)
  const factory AddParkingLotState({
    @required ParkingLot parkingLot,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required Option<Either<ParkingFailure, Unit>> saveFailureOrSuccessOption,
  }) = _AddParkingLotState;

  factory AddParkingLotState.initial() => AddParkingLotState(
    parkingLot: ParkingLot.empty(),
    isSubmitting: false,
    saveFailureOrSuccessOption: none(),
    showErrorMessages: false,
  );
}
