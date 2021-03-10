// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'cep_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CepResponse _$CepResponseFromJson(Map<String, dynamic> json) {
  return _CepResponse.fromJson(json);
}

/// @nodoc
class _$CepResponseTearOff {
  const _$CepResponseTearOff();

// ignore: unused_element
  _CepResponse call(
      {@required String cep,
      @required String logradouro,
      @required String complemento,
      @required String bairro,
      @required String localidade,
      @required String uf,
      @required String ddd}) {
    return _CepResponse(
      cep: cep,
      logradouro: logradouro,
      complemento: complemento,
      bairro: bairro,
      localidade: localidade,
      uf: uf,
      ddd: ddd,
    );
  }

// ignore: unused_element
  CepResponse fromJson(Map<String, Object> json) {
    return CepResponse.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CepResponse = _$CepResponseTearOff();

/// @nodoc
mixin _$CepResponse {
  String get cep;
  String get logradouro;
  String get complemento;
  String get bairro;
  String get localidade;
  String get uf;
  String get ddd;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $CepResponseCopyWith<CepResponse> get copyWith;
}

/// @nodoc
abstract class $CepResponseCopyWith<$Res> {
  factory $CepResponseCopyWith(
          CepResponse value, $Res Function(CepResponse) then) =
      _$CepResponseCopyWithImpl<$Res>;
  $Res call(
      {String cep,
      String logradouro,
      String complemento,
      String bairro,
      String localidade,
      String uf,
      String ddd});
}

/// @nodoc
class _$CepResponseCopyWithImpl<$Res> implements $CepResponseCopyWith<$Res> {
  _$CepResponseCopyWithImpl(this._value, this._then);

  final CepResponse _value;
  // ignore: unused_field
  final $Res Function(CepResponse) _then;

  @override
  $Res call({
    Object cep = freezed,
    Object logradouro = freezed,
    Object complemento = freezed,
    Object bairro = freezed,
    Object localidade = freezed,
    Object uf = freezed,
    Object ddd = freezed,
  }) {
    return _then(_value.copyWith(
      cep: cep == freezed ? _value.cep : cep as String,
      logradouro:
          logradouro == freezed ? _value.logradouro : logradouro as String,
      complemento:
          complemento == freezed ? _value.complemento : complemento as String,
      bairro: bairro == freezed ? _value.bairro : bairro as String,
      localidade:
          localidade == freezed ? _value.localidade : localidade as String,
      uf: uf == freezed ? _value.uf : uf as String,
      ddd: ddd == freezed ? _value.ddd : ddd as String,
    ));
  }
}

/// @nodoc
abstract class _$CepResponseCopyWith<$Res>
    implements $CepResponseCopyWith<$Res> {
  factory _$CepResponseCopyWith(
          _CepResponse value, $Res Function(_CepResponse) then) =
      __$CepResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String cep,
      String logradouro,
      String complemento,
      String bairro,
      String localidade,
      String uf,
      String ddd});
}

/// @nodoc
class __$CepResponseCopyWithImpl<$Res> extends _$CepResponseCopyWithImpl<$Res>
    implements _$CepResponseCopyWith<$Res> {
  __$CepResponseCopyWithImpl(
      _CepResponse _value, $Res Function(_CepResponse) _then)
      : super(_value, (v) => _then(v as _CepResponse));

  @override
  _CepResponse get _value => super._value as _CepResponse;

  @override
  $Res call({
    Object cep = freezed,
    Object logradouro = freezed,
    Object complemento = freezed,
    Object bairro = freezed,
    Object localidade = freezed,
    Object uf = freezed,
    Object ddd = freezed,
  }) {
    return _then(_CepResponse(
      cep: cep == freezed ? _value.cep : cep as String,
      logradouro:
          logradouro == freezed ? _value.logradouro : logradouro as String,
      complemento:
          complemento == freezed ? _value.complemento : complemento as String,
      bairro: bairro == freezed ? _value.bairro : bairro as String,
      localidade:
          localidade == freezed ? _value.localidade : localidade as String,
      uf: uf == freezed ? _value.uf : uf as String,
      ddd: ddd == freezed ? _value.ddd : ddd as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_CepResponse implements _CepResponse {
  const _$_CepResponse(
      {@required this.cep,
      @required this.logradouro,
      @required this.complemento,
      @required this.bairro,
      @required this.localidade,
      @required this.uf,
      @required this.ddd})
      : assert(cep != null),
        assert(logradouro != null),
        assert(complemento != null),
        assert(bairro != null),
        assert(localidade != null),
        assert(uf != null),
        assert(ddd != null);

  factory _$_CepResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_CepResponseFromJson(json);

  @override
  final String cep;
  @override
  final String logradouro;
  @override
  final String complemento;
  @override
  final String bairro;
  @override
  final String localidade;
  @override
  final String uf;
  @override
  final String ddd;

  @override
  String toString() {
    return 'CepResponse(cep: $cep, logradouro: $logradouro, complemento: $complemento, bairro: $bairro, localidade: $localidade, uf: $uf, ddd: $ddd)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CepResponse &&
            (identical(other.cep, cep) ||
                const DeepCollectionEquality().equals(other.cep, cep)) &&
            (identical(other.logradouro, logradouro) ||
                const DeepCollectionEquality()
                    .equals(other.logradouro, logradouro)) &&
            (identical(other.complemento, complemento) ||
                const DeepCollectionEquality()
                    .equals(other.complemento, complemento)) &&
            (identical(other.bairro, bairro) ||
                const DeepCollectionEquality().equals(other.bairro, bairro)) &&
            (identical(other.localidade, localidade) ||
                const DeepCollectionEquality()
                    .equals(other.localidade, localidade)) &&
            (identical(other.uf, uf) ||
                const DeepCollectionEquality().equals(other.uf, uf)) &&
            (identical(other.ddd, ddd) ||
                const DeepCollectionEquality().equals(other.ddd, ddd)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(cep) ^
      const DeepCollectionEquality().hash(logradouro) ^
      const DeepCollectionEquality().hash(complemento) ^
      const DeepCollectionEquality().hash(bairro) ^
      const DeepCollectionEquality().hash(localidade) ^
      const DeepCollectionEquality().hash(uf) ^
      const DeepCollectionEquality().hash(ddd);

  @JsonKey(ignore: true)
  @override
  _$CepResponseCopyWith<_CepResponse> get copyWith =>
      __$CepResponseCopyWithImpl<_CepResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CepResponseToJson(this);
  }
}

abstract class _CepResponse implements CepResponse {
  const factory _CepResponse(
      {@required String cep,
      @required String logradouro,
      @required String complemento,
      @required String bairro,
      @required String localidade,
      @required String uf,
      @required String ddd}) = _$_CepResponse;

  factory _CepResponse.fromJson(Map<String, dynamic> json) =
      _$_CepResponse.fromJson;

  @override
  String get cep;
  @override
  String get logradouro;
  @override
  String get complemento;
  @override
  String get bairro;
  @override
  String get localidade;
  @override
  String get uf;
  @override
  String get ddd;
  @override
  @JsonKey(ignore: true)
  _$CepResponseCopyWith<_CepResponse> get copyWith;
}
