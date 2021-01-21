part of 'home_bloc.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.loading() = _Loading;
  const factory HomeState.success(ParkingLot parkingLot) = _Success;
  const factory HomeState.error(ParkingFailure failure) = _Error;
}
