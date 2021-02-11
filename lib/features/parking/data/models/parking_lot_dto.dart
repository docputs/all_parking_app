import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

import '../../domain/entities/parking_lot.dart';
import 'address_dto.dart';
import 'parked_vehicle_dto.dart';

part 'parking_lot_dto.freezed.dart';
part 'parking_lot_dto.g.dart';

@freezed
abstract class ParkingLotDTO implements _$ParkingLotDTO {
  const ParkingLotDTO._();

  @JsonSerializable(explicitToJson: true)
  const factory ParkingLotDTO({
    @JsonKey(ignore: true) String id,
    @required String title,
    @required AddressDTO address,
    @required int availableSpots,
    @required double pricePerHour,
    @required List<ParkedVehicleDTO> parkedVehicles,
  }) = _ParkingLotDTO;

  factory ParkingLotDTO.fromDomain(ParkingLot model) => ParkingLotDTO(
        id: model.id,
        title: model.title,
        address: AddressDTO.fromDomain(model.address),
        availableSpots: model.availableSpots,
        pricePerHour: model.pricePerHour,
        parkedVehicles: model.parkedVehicles.map((vehicle) => ParkedVehicleDTO.fromDomain(vehicle)).asList(),
      );

  ParkingLot toDomain() => ParkingLot(
        id: id,
        title: title,
        address: address.toDomain(),
        availableSpots: availableSpots,
        parkedVehicles: parkedVehicles.map((vehicle) => vehicle.toDomain()).toImmutableList(),
        pricePerHour: pricePerHour,
      );

  factory ParkingLotDTO.fromJson(Map<String, dynamic> json) => _$ParkingLotDTOFromJson(json);

  factory ParkingLotDTO.fromFirestore(DocumentSnapshot doc) => ParkingLotDTO.fromJson(doc.data()).copyWith(id: doc.id);
}
