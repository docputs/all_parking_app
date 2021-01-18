// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parked_vehicle_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ParkedVehicleDTO _$ParkedVehicleDTOFromJson(Map<String, dynamic> json) {
  return ParkedVehicleDTO(
    id: json['id'] == null
        ? null
        : QRCode.fromJson(json['id'] as Map<String, dynamic>),
    title: json['title'] as String,
    licensePlate: json['licensePlate'] as String,
    color: _$enumDecodeNullable(_$VehicleColorEnumMap, json['color']),
    checkIn: json['checkIn'] == null
        ? null
        : DateTime.parse(json['checkIn'] as String),
    checkOut: json['checkOut'] == null
        ? null
        : DateTime.parse(json['checkOut'] as String),
    observations: json['observations'] as String,
  );
}

Map<String, dynamic> _$ParkedVehicleDTOToJson(ParkedVehicleDTO instance) =>
    <String, dynamic>{
      'id': instance.id?.toJson(),
      'title': instance.title,
      'licensePlate': instance.licensePlate,
      'color': _$VehicleColorEnumMap[instance.color],
      'checkIn': instance.checkIn?.toIso8601String(),
      'checkOut': instance.checkOut?.toIso8601String(),
      'observations': instance.observations,
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$VehicleColorEnumMap = {
  VehicleColor.black: 'black',
  VehicleColor.silver: 'silver',
  VehicleColor.white: 'white',
  VehicleColor.gray: 'gray',
  VehicleColor.green: 'green',
  VehicleColor.blue: 'blue',
  VehicleColor.red: 'red',
  VehicleColor.brown: 'brown',
  VehicleColor.yellow: 'yellow',
};
