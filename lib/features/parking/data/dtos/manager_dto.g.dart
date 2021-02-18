// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manager_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ManagerDTO _$_$_ManagerDTOFromJson(Map<String, dynamic> json) {
  return _$_ManagerDTO(
    displayName: json['displayName'] as String,
    email: json['email'] as String,
    parkingLots:
        (json['parkingLots'] as List)?.map((e) => e as String)?.toList(),
    employees: (json['employees'] as List)
        ?.map((e) =>
            e == null ? null : EmployeeDTO.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    type: _$enumDecodeNullable(_$UserTypeEnumMap, json['type']),
  );
}

Map<String, dynamic> _$_$_ManagerDTOToJson(_$_ManagerDTO instance) =>
    <String, dynamic>{
      'displayName': instance.displayName,
      'email': instance.email,
      'parkingLots': instance.parkingLots,
      'employees': instance.employees?.map((e) => e?.toJson())?.toList(),
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
