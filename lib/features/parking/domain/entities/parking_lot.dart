import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'parked_vehicle.dart';

part 'parking_lot.g.dart';

@JsonSerializable(explicitToJson: true)
class ParkingLot {
  @JsonKey(ignore: true)
  final String id;
  final String title;
  final String address;
  final String cep;
  final int availableSpots;
  final double pricePerHour;
  final List<ParkedVehicle> parkedVehicles;

  const ParkingLot({
    @required this.title,
    @required this.address,
    @required this.cep,
    @required this.availableSpots,
    @required this.pricePerHour,
    @required this.parkedVehicles,
    this.id,
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

  factory ParkingLot.fromJson(Map<String, dynamic> json) => _$ParkingLotFromJson(json);

  Map<String, dynamic> toJson() => _$ParkingLotToJson(this);
}
