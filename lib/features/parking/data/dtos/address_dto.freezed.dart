// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'address_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
AddressDTO _$AddressDTOFromJson(Map<String, dynamic> json) {
  return _AddressDTO.fromJson(json);
}

/// @nodoc
class _$AddressDTOTearOff {
  const _$AddressDTOTearOff();

// ignore: unused_element
  _AddressDTO call(
      {@required String street,
      @required String cep,
      @required String number,
      @required String city,
      @required String uf}) {
    return _AddressDTO(
      street: street,
      cep: cep,
      number: number,
      city: city,
      uf: uf,
    );
  }

// ignore: unused_element
  AddressDTO fromJson(Map<String, Object> json) {
    return AddressDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $AddressDTO = _$AddressDTOTearOff();

/// @nodoc
mixin _$AddressDTO {
  String get street;
  String get cep;
  String get number;
  String get city;
  String get uf;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $AddressDTOCopyWith<AddressDTO> get copyWith;
}

/// @nodoc
abstract class $AddressDTOCopyWith<$Res> {
  factory $AddressDTOCopyWith(
          AddressDTO value, $Res Function(AddressDTO) then) =
      _$AddressDTOCopyWithImpl<$Res>;
  $Res call({String street, String cep, String number, String city, String uf});
}

/// @nodoc
class _$AddressDTOCopyWithImpl<$Res> implements $AddressDTOCopyWith<$Res> {
  _$AddressDTOCopyWithImpl(this._value, this._then);

  final AddressDTO _value;
  // ignore: unused_field
  final $Res Function(AddressDTO) _then;

  @override
  $Res call({
    Object street = freezed,
    Object cep = freezed,
    Object number = freezed,
    Object city = freezed,
    Object uf = freezed,
  }) {
    return _then(_value.copyWith(
      street: street == freezed ? _value.street : street as String,
      cep: cep == freezed ? _value.cep : cep as String,
      number: number == freezed ? _value.number : number as String,
      city: city == freezed ? _value.city : city as String,
      uf: uf == freezed ? _value.uf : uf as String,
    ));
  }
}

/// @nodoc
abstract class _$AddressDTOCopyWith<$Res> implements $AddressDTOCopyWith<$Res> {
  factory _$AddressDTOCopyWith(
          _AddressDTO value, $Res Function(_AddressDTO) then) =
      __$AddressDTOCopyWithImpl<$Res>;
  @override
  $Res call({String street, String cep, String number, String city, String uf});
}

/// @nodoc
class __$AddressDTOCopyWithImpl<$Res> extends _$AddressDTOCopyWithImpl<$Res>
    implements _$AddressDTOCopyWith<$Res> {
  __$AddressDTOCopyWithImpl(
      _AddressDTO _value, $Res Function(_AddressDTO) _then)
      : super(_value, (v) => _then(v as _AddressDTO));

  @override
  _AddressDTO get _value => super._value as _AddressDTO;

  @override
  $Res call({
    Object street = freezed,
    Object cep = freezed,
    Object number = freezed,
    Object city = freezed,
    Object uf = freezed,
  }) {
    return _then(_AddressDTO(
      street: street == freezed ? _value.street : street as String,
      cep: cep == freezed ? _value.cep : cep as String,
      number: number == freezed ? _value.number : number as String,
      city: city == freezed ? _value.city : city as String,
      uf: uf == freezed ? _value.uf : uf as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_AddressDTO extends _AddressDTO {
  const _$_AddressDTO(
      {@required this.street,
      @required this.cep,
      @required this.number,
      @required this.city,
      @required this.uf})
      : assert(street != null),
        assert(cep != null),
        assert(number != null),
        assert(city != null),
        assert(uf != null),
        super._();

  factory _$_AddressDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_AddressDTOFromJson(json);

  @override
  final String street;
  @override
  final String cep;
  @override
  final String number;
  @override
  final String city;
  @override
  final String uf;

  @override
  String toString() {
    return 'AddressDTO(street: $street, cep: $cep, number: $number, city: $city, uf: $uf)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddressDTO &&
            (identical(other.street, street) ||
                const DeepCollectionEquality().equals(other.street, street)) &&
            (identical(other.cep, cep) ||
                const DeepCollectionEquality().equals(other.cep, cep)) &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.uf, uf) ||
                const DeepCollectionEquality().equals(other.uf, uf)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(street) ^
      const DeepCollectionEquality().hash(cep) ^
      const DeepCollectionEquality().hash(number) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(uf);

  @JsonKey(ignore: true)
  @override
  _$AddressDTOCopyWith<_AddressDTO> get copyWith =>
      __$AddressDTOCopyWithImpl<_AddressDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AddressDTOToJson(this);
  }
}

abstract class _AddressDTO extends AddressDTO {
  const _AddressDTO._() : super._();
  const factory _AddressDTO(
      {@required String street,
      @required String cep,
      @required String number,
      @required String city,
      @required String uf}) = _$_AddressDTO;

  factory _AddressDTO.fromJson(Map<String, dynamic> json) =
      _$_AddressDTO.fromJson;

  @override
  String get street;
  @override
  String get cep;
  @override
  String get number;
  @override
  String get city;
  @override
  String get uf;
  @override
  @JsonKey(ignore: true)
  _$AddressDTOCopyWith<_AddressDTO> get copyWith;
}
