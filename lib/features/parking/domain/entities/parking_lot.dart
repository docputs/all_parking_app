import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'parked_vehicle.dart';

class ParkingLot {
  final String id;
  final String title;
  final String address;
  final String cep;
  final int availableSpots;
  final double pricePerHour;
  final List<ParkedVehicle> parkedVehicles;

  const ParkingLot({
    @required this.id,
    @required this.title,
    @required this.address,
    @required this.cep,
    @required this.availableSpots,
    @required this.pricePerHour,
    @required this.parkedVehicles,
  });

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is ParkingLot &&
        o.id == id &&
        o.title == title &&
        o.address == address &&
        o.cep == cep &&
        o.availableSpots == availableSpots &&
        o.pricePerHour == pricePerHour &&
        listEquals(o.parkedVehicles, parkedVehicles);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        title.hashCode ^
        address.hashCode ^
        cep.hashCode ^
        availableSpots.hashCode ^
        pricePerHour.hashCode ^
        parkedVehicles.hashCode;
  }
}
