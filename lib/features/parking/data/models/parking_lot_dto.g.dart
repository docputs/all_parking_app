// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parking_lot_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ParkingLotDTO _$ParkingLotDTOFromJson(Map<String, dynamic> json) {
  return ParkingLotDTO(
    title: json['title'] as String,
    address: json['address'] as String,
    cep: json['cep'] as String,
    availableSpots: json['availableSpots'] as int,
    pricePerHour: (json['pricePerHour'] as num)?.toDouble(),
    parkedVehicles: (json['parkedVehicles'] as List)
        ?.map((e) => e == null
            ? null
            : ParkedVehicleDTO.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ParkingLotDTOToJson(ParkingLotDTO instance) =>
    <String, dynamic>{
      'title': instance.title,
      'address': instance.address,
      'cep': instance.cep,
      'availableSpots': instance.availableSpots,
      'pricePerHour': instance.pricePerHour,
      'parkedVehicles':
          instance.parkedVehicles?.map((e) => e?.toJson())?.toList(),
    };
