import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
import 'package:uuid/uuid.dart';

import 'parked_vehicle.dart';

part 'parking_lot.freezed.dart';
part 'parking_lot.g.dart';

@freezed
abstract class Address with _$Address {
  const factory Address({
    @required String street,
    @required String number,
    @required String cep,
    @required String city,
    @required String uf,
  }) = _Address;

  factory Address.empty() => Address(street: '', cep: '', city: '', number: '', uf: '');

  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);
}

@freezed
abstract class ParkingLot implements _$ParkingLot {
  const ParkingLot._();

  const factory ParkingLot({
    @required String id,
    @required String title,
    @required Address address,
    @required int availableSpots,
    @required double pricePerHour,
    @required KtList<ParkedVehicle> parkedVehicles,
  }) = _ParkingLot;

  factory ParkingLot.empty() {
    return ParkingLot(
      id: Uuid().v1(),
      title: '',
      address: Address.empty(),
      availableSpots: 0,
      pricePerHour: 10,
      parkedVehicles: KtList.empty(),
    );
  }

  bool isEmpty() => !(parkedVehicles.any((vehicle) => vehicle.isActive));

  List<ParkedVehicle> activeParkedVehicles() => parkedVehicles.filter((vehicle) => vehicle.isActive).asList();
}
