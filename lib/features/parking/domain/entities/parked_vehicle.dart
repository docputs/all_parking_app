import 'package:flutter/foundation.dart';

enum VehicleColor { black, silver, white, gray, green, blue, red, brown, yellow }

class ParkedVehicle {
  final String id;
  final String title;
  final String licensePlate;
  final VehicleColor color;
  final DateTime checkIn;
  final DateTime checkOut;
  final String observations;

  const ParkedVehicle({
    @required this.id,
    @required this.title,
    @required this.licensePlate,
    @required this.color,
    @required this.checkIn,
    @required this.checkOut,
    @required this.observations,
  });

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is ParkedVehicle &&
        o.id == id &&
        o.title == title &&
        o.licensePlate == licensePlate &&
        o.color == color &&
        o.checkIn == checkIn &&
        o.checkOut == checkOut &&
        o.observations == observations;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        title.hashCode ^
        licensePlate.hashCode ^
        color.hashCode ^
        checkIn.hashCode ^
        checkOut.hashCode ^
        observations.hashCode;
  }
}
