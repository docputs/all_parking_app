import 'package:flutter/foundation.dart';

import 'package:all_parking/features/parking/domain/entities/parked_vehicle.dart';

class ParkingLot {
  final String id;
  final String title;
  final String address;
  final int availableSpots;
  final double pricePerHour;
  final List<ParkedVehicle> parkedVehicles;

  const ParkingLot({
    @required this.title,
    @required this.id,
    @required this.address,
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
        o.availableSpots == availableSpots &&
        o.pricePerHour == pricePerHour &&
        listEquals(o.parkedVehicles, parkedVehicles);
  }

  @override
  int get hashCode {
    return id.hashCode ^ title.hashCode ^ address.hashCode ^ availableSpots.hashCode ^ pricePerHour.hashCode ^ parkedVehicles.hashCode;
  }
}
