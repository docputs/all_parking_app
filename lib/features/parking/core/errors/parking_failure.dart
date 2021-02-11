import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../res/messages.dart';

part 'parking_failure.freezed.dart';

@freezed
abstract class ParkingFailure with _$ParkingFailure {
  const factory ParkingFailure(String message) = _ParkingFailure;

  factory ParkingFailure.emptyField() => const ParkingFailure(Messages.emptyField);
  factory ParkingFailure.invalidAvailableSpots() => const ParkingFailure(Messages.invalidAvailableSpots);
  factory ParkingFailure.invalidPricePerHour() => const ParkingFailure(Messages.invalidPricePerHour);
  factory ParkingFailure.invalidParkingLotTitle() => const ParkingFailure(Messages.invalidParkingLotTitle);
  factory ParkingFailure.invalidCep() => const ParkingFailure(Messages.invalidCep);
  factory ParkingFailure.exceededParkingLots() => const ParkingFailure(Messages.exceededParkingLots);
  factory ParkingFailure.noCurrentParkingLot() => const ParkingFailure(Messages.noCurrentParkingLot);
  factory ParkingFailure.invalidField() => const ParkingFailure(Messages.invalidField);
  factory ParkingFailure.serverFailure() => const ParkingFailure(Messages.serverFailure);
  factory ParkingFailure.unknownFailure() => const ParkingFailure(Messages.unknownFailure);
}
