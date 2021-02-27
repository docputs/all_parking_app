// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EmployeeDTO _$_$_EmployeeDTOFromJson(Map<String, dynamic> json) {
  return _$_EmployeeDTO(
    id: json['id'] as String,
    displayName: json['displayName'] as String,
    parkingLot: json['parkingLot'] == null
        ? null
        : AssociatedParkingLotDTO.fromJson(
            json['parkingLot'] as Map<String, dynamic>),
    phoneNumber: json['phoneNumber'] as String,
    cpf: json['cpf'] as String,
    type: _$enumDecodeNullable(_$UserTypeEnumMap, json['type']),
  );
}

Map<String, dynamic> _$_$_EmployeeDTOToJson(_$_EmployeeDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'displayName': instance.displayName,
      'parkingLot': instance.parkingLot?.toJson(),
      'phoneNumber': instance.phoneNumber,
      'cpf': instance.cpf,
      'type': _$UserTypeEnumMap[instance.type],
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

const _$UserTypeEnumMap = {
  UserType.manager: 'manager',
  UserType.employee: 'employee',
};
