import 'package:freezed_annotation/freezed_annotation.dart';

part 'parking_failure.freezed.dart';

@freezed
abstract class ParkingFailure with _$ParkingFailure {
  const factory ParkingFailure.invalidAvailableSpots(String message) = _InvalidAvailableSpots;
  const factory ParkingFailure.invalidPricePerHour(String message) = _InvalidPricePerHour;
  const factory ParkingFailure.invalidParkingLotTitle(String message) = _InvalidParkingLotTitle;
  const factory ParkingFailure.invalidCep(String message) = _InvalidCep;
  const factory ParkingFailure.serverFailure(String message) = _ServerFailure;
  const factory ParkingFailure.unknownFailure(String message) = _UnknownFailure;
}
