// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cep_service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CepResponse _$_$_CepResponseFromJson(Map<String, dynamic> json) {
  return _$_CepResponse(
    cep: json['cep'] as String,
    logradouro: json['logradouro'] as String,
    complemento: json['complemento'] as String,
    bairro: json['bairro'] as String,
    localidade: json['localidade'] as String,
    uf: json['uf'] as String,
    ddd: json['ddd'] as String,
  );
}

Map<String, dynamic> _$_$_CepResponseToJson(_$_CepResponse instance) =>
    <String, dynamic>{
      'cep': instance.cep,
      'logradouro': instance.logradouro,
      'complemento': instance.complemento,
      'bairro': instance.bairro,
      'localidade': instance.localidade,
      'uf': instance.uf,
      'ddd': instance.ddd,
    };
