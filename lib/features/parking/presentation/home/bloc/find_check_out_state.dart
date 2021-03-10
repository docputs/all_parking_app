part of 'find_check_out_bloc.dart';

@freezed
abstract class FindCheckOutState with _$FindCheckOutState {
  const factory FindCheckOutState.initial() = _Initial;
  const factory FindCheckOutState.loading() = _Loading;
  const factory FindCheckOutState.success(ParkedVehicle vehicle) = _Success;
  const factory FindCheckOutState.error(ParkingFailure failure) = _Error;
}
