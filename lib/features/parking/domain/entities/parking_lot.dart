import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

import 'address.dart';

part 'parking_lot.freezed.dart';

@freezed
abstract class ParkingLot implements _$ParkingLot {
  const ParkingLot._();

  const factory ParkingLot({
    @required String id,
    @required String title,
    @required Address address,
    @required int availableSpots,
    @required double pricePerHour,
  }) = _ParkingLot;

  factory ParkingLot.empty() {
    return ParkingLot(
      id: Uuid().v1(),
      title: '',
      address: Address.empty(),
      availableSpots: 0,
      pricePerHour: 0,
    );
  }
}
