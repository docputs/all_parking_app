import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'parked_vehicle.freezed.dart';
part 'parked_vehicle.g.dart';

enum VehicleColor { black, silver, white, gray, green, blue, red, brown, yellow }

@JsonSerializable()
class QRCode {
  final String value;

  const QRCode(this.value);

  factory QRCode.fromJson(Map<String, dynamic> json) => _$QRCodeFromJson(json);

  Map<String, dynamic> toJson() => _$QRCodeToJson(this);

  QRCode copyWith({
    String value,
  }) {
    return QRCode(
      value ?? this.value,
    );
  }
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
