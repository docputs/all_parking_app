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
      @required Address address,
      @required int availableSpots,
      @required double pricePerHour}) {
    return _ParkingLot(
      id: id,
      title: title,
      address: address,
      availableSpots: availableSpots,
      pricePerHour: pricePerHour,
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
      double pricePerHour});

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
      double pricePerHour});

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
      @required this.pricePerHour})
      : assert(id != null),
        assert(title != null),
        assert(address != null),
        assert(availableSpots != null),
        assert(pricePerHour != null),
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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ParkingLot(id: $id, title: $title, address: $address, availableSpots: $availableSpots, pricePerHour: $pricePerHour)';
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
      ..add(DiagnosticsProperty('pricePerHour', pricePerHour));
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
                    .equals(other.pricePerHour, pricePerHour)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(availableSpots) ^
      const DeepCollectionEquality().hash(pricePerHour);

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
      @required double pricePerHour}) = _$_ParkingLot;

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
  @JsonKey(ignore: true)
  _$ParkingLotCopyWith<_ParkingLot> get copyWith;
}
