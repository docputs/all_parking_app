// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parking_lot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Address _$_$_AddressFromJson(Map<String, dynamic> json) {
  return _$_Address(
    street: json['street'] as String,
    number: json['number'] as String,
    cep: json['cep'] as String,
    city: json['city'] as String,
    uf: json['uf'] as String,
  );
}

Map<String, dynamic> _$_$_AddressToJson(_$_Address instance) =>
    <String, dynamic>{
      'street': instance.street,
      'number': instance.number,
      'cep': instance.cep,
      'city': instance.city,
      'uf': instance.uf,
    };
