import 'package:all_parking/features/parking/domain/entities/owner_data.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'parked_vehicle.freezed.dart';
part 'parked_vehicle.g.dart';

enum VehicleColor { black, silver, white, gray, green, blue, red, brown, yellow }

enum VehicleType { car, motorcycle }

@freezed
abstract class QRCode with _$QRCode {
  const factory QRCode(String value) = _QRCode;

  factory QRCode.fromJson(Map<String, dynamic> json) => _$QRCodeFromJson(json);
}

@freezed
abstract class ParkedVehicle implements _$ParkedVehicle {
  const ParkedVehicle._();

  const factory ParkedVehicle({
    @required QRCode id,
    @required String title,
    @required String licensePlate,
    @required VehicleColor color,
    @required DateTime checkIn,
    @required DateTime checkOut,
    @required VehicleType type,
    @required String observations,
    OwnerData ownerData,
  }) = _ParkedVehicle;

  factory ParkedVehicle.empty() {
    final now = DateTime.now();
    return ParkedVehicle(
      id: QRCode(''),
      title: '',
      licensePlate: '',
      color: VehicleColor.black,
      checkIn: now,
      checkOut: now,
      type: VehicleType.car,
      observations: '',
      ownerData: OwnerData.empty(),
    );
  }

  Duration getElapsedTime() => DateTime.now().difference(checkIn);
}
