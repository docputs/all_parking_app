import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

import 'parked_vehicle.dart';

part 'parking_lot.freezed.dart';

@freezed
abstract class ParkingLot implements _$ParkingLot {
  const factory ParkingLot({
    @required String id,
    @required String title,
    @required String address,
    @required String cep,
    @required int availableSpots,
    @required double pricePerHour,
    @required List<ParkedVehicle> parkedVehicles,
  }) = _ParkingLot;

  factory ParkingLot.empty() {
    return ParkingLot(
      id: Uuid().v1(),
      title: '',
      address: '',
      cep: '',
      availableSpots: 0,
      pricePerHour: 10,
      parkedVehicles: [],
    );
  }
}
