// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'parking_lot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ParkingLotTearOff {
  const _$ParkingLotTearOff();

// ignore: unused_element
  _ParkingLot call(
      {@required String id,
      @required String title,
      @required String address,
      @required String cep,
      @required int availableSpots,
      @required double pricePerHour,
      @required List<ParkedVehicle> parkedVehicles}) {
    return _ParkingLot(
      id: id,
      title: title,
      address: address,
      cep: cep,
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
  String get address;
  String get cep;
  int get availableSpots;
  double get pricePerHour;
  List<ParkedVehicle> get parkedVehicles;

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
      String address,
      String cep,
      int availableSpots,
      double pricePerHour,
      List<ParkedVehicle> parkedVehicles});
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
    Object cep = freezed,
    Object availableSpots = freezed,
    Object pricePerHour = freezed,
    Object parkedVehicles = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      address: address == freezed ? _value.address : address as String,
      cep: cep == freezed ? _value.cep : cep as String,
      availableSpots: availableSpots == freezed
          ? _value.availableSpots
          : availableSpots as int,
      pricePerHour: pricePerHour == freezed
          ? _value.pricePerHour
          : pricePerHour as double,
      parkedVehicles: parkedVehicles == freezed
          ? _value.parkedVehicles
          : parkedVehicles as List<ParkedVehicle>,
    ));
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
      String address,
      String cep,
      int availableSpots,
      double pricePerHour,
      List<ParkedVehicle> parkedVehicles});
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
    Object cep = freezed,
    Object availableSpots = freezed,
    Object pricePerHour = freezed,
    Object parkedVehicles = freezed,
  }) {
    return _then(_ParkingLot(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      address: address == freezed ? _value.address : address as String,
      cep: cep == freezed ? _value.cep : cep as String,
      availableSpots: availableSpots == freezed
          ? _value.availableSpots
          : availableSpots as int,
      pricePerHour: pricePerHour == freezed
          ? _value.pricePerHour
          : pricePerHour as double,
      parkedVehicles: parkedVehicles == freezed
          ? _value.parkedVehicles
          : parkedVehicles as List<ParkedVehicle>,
    ));
  }
}

/// @nodoc
class _$_ParkingLot with DiagnosticableTreeMixin implements _ParkingLot {
  const _$_ParkingLot(
      {@required this.id,
      @required this.title,
      @required this.address,
      @required this.cep,
      @required this.availableSpots,
      @required this.pricePerHour,
      @required this.parkedVehicles})
      : assert(id != null),
        assert(title != null),
        assert(address != null),
        assert(cep != null),
        assert(availableSpots != null),
        assert(pricePerHour != null),
        assert(parkedVehicles != null);

  @override
  final String id;
  @override
  final String title;
  @override
  final String address;
  @override
  final String cep;
  @override
  final int availableSpots;
  @override
  final double pricePerHour;
  @override
  final List<ParkedVehicle> parkedVehicles;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ParkingLot(id: $id, title: $title, address: $address, cep: $cep, availableSpots: $availableSpots, pricePerHour: $pricePerHour, parkedVehicles: $parkedVehicles)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ParkingLot'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('cep', cep))
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
            (identical(other.cep, cep) ||
                const DeepCollectionEquality().equals(other.cep, cep)) &&
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
      const DeepCollectionEquality().hash(cep) ^
      const DeepCollectionEquality().hash(availableSpots) ^
      const DeepCollectionEquality().hash(pricePerHour) ^
      const DeepCollectionEquality().hash(parkedVehicles);

  @JsonKey(ignore: true)
  @override
  _$ParkingLotCopyWith<_ParkingLot> get copyWith =>
      __$ParkingLotCopyWithImpl<_ParkingLot>(this, _$identity);
}

abstract class _ParkingLot implements ParkingLot {
  const factory _ParkingLot(
      {@required String id,
      @required String title,
      @required String address,
      @required String cep,
      @required int availableSpots,
      @required double pricePerHour,
      @required List<ParkedVehicle> parkedVehicles}) = _$_ParkingLot;

  @override
  String get id;
  @override
  String get title;
  @override
  String get address;
  @override
  String get cep;
  @override
  int get availableSpots;
  @override
  double get pricePerHour;
  @override
  List<ParkedVehicle> get parkedVehicles;
  @override
  @JsonKey(ignore: true)
  _$ParkingLotCopyWith<_ParkingLot> get copyWith;
}
