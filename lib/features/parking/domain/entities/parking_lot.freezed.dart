// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'parking_lot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Address _$AddressFromJson(Map<String, dynamic> json) {
  return _Address.fromJson(json);
}

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

// ignore: unused_element
  Address fromJson(Map<String, Object> json) {
    return Address.fromJson(json);
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

  Map<String, dynamic> toJson();
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

@JsonSerializable()

/// @nodoc
class _$_Address with DiagnosticableTreeMixin implements _Address {
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

  factory _$_Address.fromJson(Map<String, dynamic> json) =>
      _$_$_AddressFromJson(json);

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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Address(street: $street, number: $number, cep: $cep, city: $city, uf: $uf)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Address'))
      ..add(DiagnosticsProperty('street', street))
      ..add(DiagnosticsProperty('number', number))
      ..add(DiagnosticsProperty('cep', cep))
      ..add(DiagnosticsProperty('city', city))
      ..add(DiagnosticsProperty('uf', uf));
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

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AddressToJson(this);
  }
}

abstract class _Address implements Address {
  const factory _Address(
      {@required String street,
      @required String number,
      @required String cep,
      @required String city,
      @required String uf}) = _$_Address;

  factory _Address.fromJson(Map<String, dynamic> json) = _$_Address.fromJson;

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

/// @nodoc
class _$ParkingLotTearOff {
  const _$ParkingLotTearOff();

// ignore: unused_element
  _ParkingLot call(
      {@required String id,
      @required String title,
      @required Address address,
      @required int availableSpots,
      @required double pricePerHour,
      @required KtList<ParkedVehicle> parkedVehicles}) {
    return _ParkingLot(
      id: id,
      title: title,
      address: address,
      availableSpots: availableSpots,
      pricePerHour: pricePerHour,
      parkedVehicles: parkedVehicles,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ParkingLot = _$ParkingLotTearOff();

/// @nodoc
mixin _$ParkingLot {
  String get id;
  String get title;
  Address get address;
  int get availableSpots;
  double get pricePerHour;
  KtList<ParkedVehicle> get parkedVehicles;

  @JsonKey(ignore: true)
  $ParkingLotCopyWith<ParkingLot> get copyWith;
}

/// @nodoc
abstract class $ParkingLotCopyWith<$Res> {
  factory $ParkingLotCopyWith(
          ParkingLot value, $Res Function(ParkingLot) then) =
      _$ParkingLotCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String title,
      Address address,
      int availableSpots,
      double pricePerHour,
      KtList<ParkedVehicle> parkedVehicles});

  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class _$ParkingLotCopyWithImpl<$Res> implements $ParkingLotCopyWith<$Res> {
  _$ParkingLotCopyWithImpl(this._value, this._then);

  final ParkingLot _value;
  // ignore: unused_field
  final $Res Function(ParkingLot) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object address = freezed,
    Object availableSpots = freezed,
    Object pricePerHour = freezed,
    Object parkedVehicles = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      address: address == freezed ? _value.address : address as Address,
      availableSpots: availableSpots == freezed
          ? _value.availableSpots
          : availableSpots as int,
      pricePerHour: pricePerHour == freezed
          ? _value.pricePerHour
          : pricePerHour as double,
      parkedVehicles: parkedVehicles == freezed
          ? _value.parkedVehicles
          : parkedVehicles as KtList<ParkedVehicle>,
    ));
  }

  @override
  $AddressCopyWith<$Res> get address {
    if (_value.address == null) {
      return null;
    }
    return $AddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value));
    });
  }
}

/// @nodoc
abstract class _$ParkingLotCopyWith<$Res> implements $ParkingLotCopyWith<$Res> {
  factory _$ParkingLotCopyWith(
          _ParkingLot value, $Res Function(_ParkingLot) then) =
      __$ParkingLotCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String title,
      Address address,
      int availableSpots,
      double pricePerHour,
      KtList<ParkedVehicle> parkedVehicles});

  @override
  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class __$ParkingLotCopyWithImpl<$Res> extends _$ParkingLotCopyWithImpl<$Res>
    implements _$ParkingLotCopyWith<$Res> {
  __$ParkingLotCopyWithImpl(
      _ParkingLot _value, $Res Function(_ParkingLot) _then)
      : super(_value, (v) => _then(v as _ParkingLot));

  @override
  _ParkingLot get _value => super._value as _ParkingLot;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object address = freezed,
    Object availableSpots = freezed,
    Object pricePerHour = freezed,
    Object parkedVehicles = freezed,
  }) {
    return _then(_ParkingLot(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      address: address == freezed ? _value.address : address as Address,
      availableSpots: availableSpots == freezed
          ? _value.availableSpots
          : availableSpots as int,
      pricePerHour: pricePerHour == freezed
          ? _value.pricePerHour
          : pricePerHour as double,
      parkedVehicles: parkedVehicles == freezed
          ? _value.parkedVehicles
          : parkedVehicles as KtList<ParkedVehicle>,
    ));
  }
}

/// @nodoc
class _$_ParkingLot extends _ParkingLot with DiagnosticableTreeMixin {
  const _$_ParkingLot(
      {@required this.id,
      @required this.title,
      @required this.address,
      @required this.availableSpots,
      @required this.pricePerHour,
      @required this.parkedVehicles})
      : assert(id != null),
        assert(title != null),
        assert(address != null),
        assert(availableSpots != null),
        assert(pricePerHour != null),
        assert(parkedVehicles != null),
        super._();

  @override
  final String id;
  @override
  final String title;
  @override
  final Address address;
  @override
  final int availableSpots;
  @override
  final double pricePerHour;
  @override
  final KtList<ParkedVehicle> parkedVehicles;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ParkingLot(id: $id, title: $title, address: $address, availableSpots: $availableSpots, pricePerHour: $pricePerHour, parkedVehicles: $parkedVehicles)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ParkingLot'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('availableSpots', availableSpots))
      ..add(DiagnosticsProperty('pricePerHour', pricePerHour))
      ..add(DiagnosticsProperty('parkedVehicles', parkedVehicles));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ParkingLot &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.availableSpots, availableSpots) ||
                const DeepCollectionEquality()
                    .equals(other.availableSpots, availableSpots)) &&
            (identical(other.pricePerHour, pricePerHour) ||
                const DeepCollectionEquality()
                    .equals(other.pricePerHour, pricePerHour)) &&
            (identical(other.parkedVehicles, parkedVehicles) ||
                const DeepCollectionEquality()
                    .equals(other.parkedVehicles, parkedVehicles)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(availableSpots) ^
      const DeepCollectionEquality().hash(pricePerHour) ^
      const DeepCollectionEquality().hash(parkedVehicles);

  @JsonKey(ignore: true)
  @override
  _$ParkingLotCopyWith<_ParkingLot> get copyWith =>
      __$ParkingLotCopyWithImpl<_ParkingLot>(this, _$identity);
}

abstract class _ParkingLot extends ParkingLot {
  const _ParkingLot._() : super._();
  const factory _ParkingLot(
      {@required String id,
      @required String title,
      @required Address address,
      @required int availableSpots,
      @required double pricePerHour,
      @required KtList<ParkedVehicle> parkedVehicles}) = _$_ParkingLot;

  @override
  String get id;
  @override
  String get title;
  @override
  Address get address;
  @override
  int get availableSpots;
  @override
  double get pricePerHour;
  @override
  KtList<ParkedVehicle> get parkedVehicles;
  @override
  @JsonKey(ignore: true)
  _$ParkingLotCopyWith<_ParkingLot> get copyWith;
}
