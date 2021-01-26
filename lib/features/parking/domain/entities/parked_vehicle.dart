import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'parked_vehicle.freezed.dart';
part 'parked_vehicle.g.dart';

enum VehicleColor { black, silver, white, gray, green, blue, red, brown, yellow }

@freezed
abstract class QRCode with _$QRCode {
  const factory QRCode(String value) = _QRCode;

  factory QRCode.fromJson(Map<String, dynamic> json) => _$QRCodeFromJson(json);
}

@freezed
abstract class ParkedVehicle with _$ParkedVehicle {
  const factory ParkedVehicle({
    @required QRCode id,
    @required String title,
    @required String licensePlate,
    @required VehicleColor color,
    @required DateTime checkIn,
    @required DateTime checkOut,
    @required String observations,
  }) = _ParkedVehicle;
}
