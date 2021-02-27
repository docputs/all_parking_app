import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'owner_data.dart';

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
    @required @nullable DateTime checkOut,
    @required VehicleType type,
    @required String observations,
    @required bool isActive,
    OwnerData ownerData,
    double overridenPricePerHour,
  }) = _ParkedVehicle;

  factory ParkedVehicle.empty() {
    return ParkedVehicle(
      id: QRCode(''),
      title: '',
      licensePlate: '',
      color: VehicleColor.black,
      checkIn: DateTime.now(),
      checkOut: null,
      type: VehicleType.car,
      observations: '',
      ownerData: OwnerData.empty(),
      isActive: true,
    );
  }

  Duration getElapsedTime() => checkOut == null ? DateTime.now().difference(checkIn) : checkOut.difference(checkIn);

  double calculateAmountToPay(double pricePerHour) {
    final elapsedTime = getElapsedTime().inHours;
    final finalPrice = overridenPricePerHour ?? pricePerHour;
    return elapsedTime < 1 ? finalPrice : elapsedTime * finalPrice;
  }
}
