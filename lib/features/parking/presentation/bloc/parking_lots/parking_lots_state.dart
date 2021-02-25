part of 'parking_lots_bloc.dart';

@freezed
abstract class ParkingLotsState with _$ParkingLotsState {
  const factory ParkingLotsState.initial() = _Initial;
  const factory ParkingLotsState.loading() = _Loading;
  const factory ParkingLotsState.success(KtList<ParkingLot> parkingLots) = _Success;
  const factory ParkingLotsState.error(ParkingFailure failure) = _Error;
}
