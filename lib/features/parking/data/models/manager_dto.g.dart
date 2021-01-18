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
  );
}

Map<String, dynamic> _$_$_ManagerDTOToJson(_$_ManagerDTO instance) =>
    <String, dynamic>{
      'displayName': instance.displayName,
      'email': instance.email,
      'parkingLots': instance.parkingLots,
      'employees': instance.employees?.map((e) => e?.toJson())?.toList(),
    };
