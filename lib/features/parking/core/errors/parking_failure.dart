import 'package:freezed_annotation/freezed_annotation.dart';

part 'parking_failure.freezed.dart';

@freezed
abstract class ParkingFailure with _$ParkingFailure {
  const factory ParkingFailure.serverFailure() = _ServerFailure;
  const factory ParkingFailure.unknownFailure() = _UnknownFailure;
}
