// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parking_lot_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ParkingLotDTO _$_$_ParkingLotDTOFromJson(Map<String, dynamic> json) {
  return _$_ParkingLotDTO(
    title: json['title'] as String,
    address: json['address'] == null
        ? null
        : AddressDTO.fromJson(json['address'] as Map<String, dynamic>),
    availableSpots: json['availableSpots'] as int,
    pricePerHour: (json['pricePerHour'] as num)?.toDouble(),
    parkedVehicles: (json['parkedVehicles'] as List)
        ?.map((e) => e == null
            ? null
            : ParkedVehicleDTO.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_ParkingLotDTOToJson(_$_ParkingLotDTO instance) =>
    <String, dynamic>{
      'title': instance.title,
      'address': instance.address?.toJson(),
      'availableSpots': instance.availableSpots,
      'pricePerHour': instance.pricePerHour,
      'parkedVehicles':
          instance.parkedVehicles?.map((e) => e?.toJson())?.toList(),
    };
