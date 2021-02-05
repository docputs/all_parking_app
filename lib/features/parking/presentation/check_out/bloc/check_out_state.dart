part of 'check_out_bloc.dart';

@freezed
abstract class CheckOutState with _$CheckOutState {
  const factory CheckOutState.initial() = _Initial;
  const factory CheckOutState.loading() = _Loading;
  const factory CheckOutState.success() = _Success;
  const factory CheckOutState.error(ParkingFailure failure) = _Error;
}
