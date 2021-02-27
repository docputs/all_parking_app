// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AddressTearOff {
  const _$AddressTearOff();

// ignore: unused_element
  _Address call(
      {@required String street,
      @required String number,
      @required String cep,
      @required String city,
      @required String uf}) {
    return _Address(
      street: street,
      number: number,
      cep: cep,
      city: city,
      uf: uf,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Address = _$AddressTearOff();

/// @nodoc
mixin _$Address {
  String get street;
  String get number;
  String get cep;
  String get city;
  String get uf;

  @JsonKey(ignore: true)
  $AddressCopyWith<Address> get copyWith;
}

/// @nodoc
abstract class $AddressCopyWith<$Res> {
  factory $AddressCopyWith(Address value, $Res Function(Address) then) =
      _$AddressCopyWithImpl<$Res>;
  $Res call({String street, String number, String cep, String city, String uf});
}

/// @nodoc
class _$AddressCopyWithImpl<$Res> implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._value, this._then);

  final Address _value;
  // ignore: unused_field
  final $Res Function(Address) _then;

  @override
  $Res call({
    Object street = freezed,
    Object number = freezed,
    Object cep = freezed,
    Object city = freezed,
    Object uf = freezed,
  }) {
    return _then(_value.copyWith(
      street: street == freezed ? _value.street : street as String,
      number: number == freezed ? _value.number : number as String,
      cep: cep == freezed ? _value.cep : cep as String,
      city: city == freezed ? _value.city : city as String,
      uf: uf == freezed ? _value.uf : uf as String,
    ));
  }
}

/// @nodoc
abstract class _$AddressCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$AddressCopyWith(_Address value, $Res Function(_Address) then) =
      __$AddressCopyWithImpl<$Res>;
  @override
  $Res call({String street, String number, String cep, String city, String uf});
}

/// @nodoc
class __$AddressCopyWithImpl<$Res> extends _$AddressCopyWithImpl<$Res>
    implements _$AddressCopyWith<$Res> {
  __$AddressCopyWithImpl(_Address _value, $Res Function(_Address) _then)
      : super(_value, (v) => _then(v as _Address));

  @override
  _Address get _value => super._value as _Address;

  @override
  $Res call({
    Object street = freezed,
    Object number = freezed,
    Object cep = freezed,
    Object city = freezed,
    Object uf = freezed,
  }) {
    return _then(_Address(
      street: street == freezed ? _value.street : street as String,
      number: number == freezed ? _value.number : number as String,
      cep: cep == freezed ? _value.cep : cep as String,
      city: city == freezed ? _value.city : city as String,
      uf: uf == freezed ? _value.uf : uf as String,
    ));
  }
}

/// @nodoc
class _$_Address implements _Address {
  const _$_Address(
      {@required this.street,
      @required this.number,
      @required this.cep,
      @required this.city,
      @required this.uf})
      : assert(street != null),
        assert(number != null),
        assert(cep != null),
        assert(city != null),
        assert(uf != null);

  @override
  final String street;
  @override
  final String number;
  @override
  final String cep;
  @override
  final String city;
  @override
  final String uf;

  @override
  String toString() {
    return 'Address(street: $street, number: $number, cep: $cep, city: $city, uf: $uf)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Address &&
            (identical(other.street, street) ||
                const DeepCollectionEquality().equals(other.street, street)) &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)) &&
            (identical(other.cep, cep) ||
                const DeepCollectionEquality().equals(other.cep, cep)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.uf, uf) ||
                const DeepCollectionEquality().equals(other.uf, uf)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(street) ^
      const DeepCollectionEquality().hash(number) ^
      const DeepCollectionEquality().hash(cep) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(uf);

  @JsonKey(ignore: true)
  @override
  _$AddressCopyWith<_Address> get copyWith =>
      __$AddressCopyWithImpl<_Address>(this, _$identity);
}

abstract class _Address implements Address {
  const factory _Address(
      {@required String street,
      @required String number,
      @required String cep,
      @required String city,
      @required String uf}) = _$_Address;

  @override
  String get street;
  @override
  String get number;
  @override
  String get cep;
  @override
  String get city;
  @override
  String get uf;
  @override
  @JsonKey(ignore: true)
  _$AddressCopyWith<_Address> get copyWith;
}
