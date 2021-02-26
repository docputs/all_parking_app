import 'package:all_parking/features/parking/core/errors/parking_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'parking_lots_state.freezed.dart';

@freezed
abstract class ParkingLotsState<T> with _$ParkingLotsState {
  const factory ParkingLotsState.initial() = _Initial;
  const factory ParkingLotsState.loading() = _Loading;
  const factory ParkingLotsState.success(T parkingLots) = _Success;
  const factory ParkingLotsState.error(ParkingFailure failure) = _Error;
}
