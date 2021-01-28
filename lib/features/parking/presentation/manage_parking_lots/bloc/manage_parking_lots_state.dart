part of 'manage_parking_lots_bloc.dart';

@freezed
abstract class ManageParkingLotsState with _$ManageParkingLotsState {
  const factory ManageParkingLotsState.initial() = _Initial;
  const factory ManageParkingLotsState.loading() = _Loading;
  const factory ManageParkingLotsState.success() = _Success;
  const factory ManageParkingLotsState.error(ParkingFailure failure) = _Error;

}
