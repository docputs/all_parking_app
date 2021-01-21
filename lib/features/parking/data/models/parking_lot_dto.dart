import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/parking_lot.dart';
import 'parked_vehicle_dto.dart';

part 'parking_lot_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class ParkingLotDTO {
  @JsonKey(ignore: true)
  final String id;
  final String title;
  final String address;
  final String cep;
  final int availableSpots;
  final double pricePerHour;
  final List<ParkedVehicleDTO> parkedVehicles;

  const ParkingLotDTO({
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

    return o is ParkingLotDTO &&
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

  ParkingLotDTO.fromDomain(ParkingLot model)
      : this(
          id: model.id,
          title: model.title,
          address: model.address,
          cep: model.cep,
          availableSpots: model.availableSpots,
          pricePerHour: model.pricePerHour,
          parkedVehicles: model.parkedVehicles.map((vehicle) => ParkedVehicleDTO.fromDomain(vehicle)).toList(),
        );

  ParkingLot toDomain() => ParkingLot(
        id: id,
        title: title,
        address: address,
        availableSpots: availableSpots,
        cep: cep,
        parkedVehicles: parkedVehicles.map((vehicle) => vehicle.toDomain()).toList(),
        pricePerHour: pricePerHour,
      );

  factory ParkingLotDTO.fromJson(Map<String, dynamic> json) => _$ParkingLotDTOFromJson(json);

  Map<String, dynamic> toJson() => _$ParkingLotDTOToJson(this);
}
