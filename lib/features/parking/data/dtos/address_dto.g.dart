// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddressDTO _$_$_AddressDTOFromJson(Map<String, dynamic> json) {
  return _$_AddressDTO(
    street: json['street'] as String,
    cep: json['cep'] as String,
    number: json['number'] as String,
    city: json['city'] as String,
    uf: json['uf'] as String,
  );
}

Map<String, dynamic> _$_$_AddressDTOToJson(_$_AddressDTO instance) =>
    <String, dynamic>{
      'street': instance.street,
      'cep': instance.cep,
      'number': instance.number,
      'city': instance.city,
      'uf': instance.uf,
    };
