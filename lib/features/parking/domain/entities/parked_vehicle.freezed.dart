// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'parked_vehicle.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ParkedVehicleTearOff {
  const _$ParkedVehicleTearOff();

// ignore: unused_element
  _ParkedVehicle call(
      {@required QRCode id,
      @required String title,
      @required String licensePlate,
      @required VehicleColor color,
      @required DateTime checkIn,
      @required DateTime checkOut,
      @required String observations}) {
    return _ParkedVehicle(
      id: id,
      title: title,
      licensePlate: licensePlate,
      color: color,
      checkIn: checkIn,
      checkOut: checkOut,
      observations: observations,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ParkedVehicle = _$ParkedVehicleTearOff();

/// @nodoc
mixin _$ParkedVehicle {
  QRCode get id;
  String get title;
  String get licensePlate;
  VehicleColor get color;
  DateTime get checkIn;
  DateTime get checkOut;
  String get observations;

  @JsonKey(ignore: true)
  $ParkedVehicleCopyWith<ParkedVehicle> get copyWith;
}

/// @nodoc
abstract class $ParkedVehicleCopyWith<$Res> {
  factory $ParkedVehicleCopyWith(
          ParkedVehicle value, $Res Function(ParkedVehicle) then) =
      _$ParkedVehicleCopyWithImpl<$Res>;
  $Res call(
      {QRCode id,
      String title,
      String licensePlate,
      VehicleColor color,
      DateTime checkIn,
      DateTime checkOut,
      String observations});
}

/// @nodoc
class _$ParkedVehicleCopyWithImpl<$Res>
    implements $ParkedVehicleCopyWith<$Res> {
  _$ParkedVehicleCopyWithImpl(this._value, this._then);

  final ParkedVehicle _value;
  // ignore: unused_field
  final $Res Function(ParkedVehicle) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object licensePlate = freezed,
    Object color = freezed,
    Object checkIn = freezed,
    Object checkOut = freezed,
    Object observations = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as QRCode,
      title: title == freezed ? _value.title : title as String,
      licensePlate: licensePlate == freezed
          ? _value.licensePlate
          : licensePlate as String,
      color: color == freezed ? _value.color : color as VehicleColor,
      checkIn: checkIn == freezed ? _value.checkIn : checkIn as DateTime,
      checkOut: checkOut == freezed ? _value.checkOut : checkOut as DateTime,
      observations: observations == freezed
          ? _value.observations
          : observations as String,
    ));
  }
}

/// @nodoc
abstract class _$ParkedVehicleCopyWith<$Res>
    implements $ParkedVehicleCopyWith<$Res> {
  factory _$ParkedVehicleCopyWith(
          _ParkedVehicle value, $Res Function(_ParkedVehicle) then) =
      __$ParkedVehicleCopyWithImpl<$Res>;
  @override
  $Res call(
      {QRCode id,
      String title,
      String licensePlate,
      VehicleColor color,
      DateTime checkIn,
      DateTime checkOut,
      String observations});
}

/// @nodoc
class __$ParkedVehicleCopyWithImpl<$Res>
    extends _$ParkedVehicleCopyWithImpl<$Res>
    implements _$ParkedVehicleCopyWith<$Res> {
  __$ParkedVehicleCopyWithImpl(
      _ParkedVehicle _value, $Res Function(_ParkedVehicle) _then)
      : super(_value, (v) => _then(v as _ParkedVehicle));

  @override
  _ParkedVehicle get _value => super._value as _ParkedVehicle;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object licensePlate = freezed,
    Object color = freezed,
    Object checkIn = freezed,
    Object checkOut = freezed,
    Object observations = freezed,
  }) {
    return _then(_ParkedVehicle(
      id: id == freezed ? _value.id : id as QRCode,
      title: title == freezed ? _value.title : title as String,
      licensePlate: licensePlate == freezed
          ? _value.licensePlate
          : licensePlate as String,
      color: color == freezed ? _value.color : color as VehicleColor,
      checkIn: checkIn == freezed ? _value.checkIn : checkIn as DateTime,
      checkOut: checkOut == freezed ? _value.checkOut : checkOut as DateTime,
      observations: observations == freezed
          ? _value.observations
          : observations as String,
    ));
  }
}

/// @nodoc
class _$_ParkedVehicle with DiagnosticableTreeMixin implements _ParkedVehicle {
  const _$_ParkedVehicle(
      {@required this.id,
      @required this.title,
      @required this.licensePlate,
      @required this.color,
      @required this.checkIn,
      @required this.checkOut,
      @required this.observations})
      : assert(id != null),
        assert(title != null),
        assert(licensePlate != null),
        assert(color != null),
        assert(checkIn != null),
        assert(checkOut != null),
        assert(observations != null);

  @override
  final QRCode id;
  @override
  final String title;
  @override
  final String licensePlate;
  @override
  final VehicleColor color;
  @override
  final DateTime checkIn;
  @override
  final DateTime checkOut;
  @override
  final String observations;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ParkedVehicle(id: $id, title: $title, licensePlate: $licensePlate, color: $color, checkIn: $checkIn, checkOut: $checkOut, observations: $observations)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ParkedVehicle'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('licensePlate', licensePlate))
      ..add(DiagnosticsProperty('color', color))
      ..add(DiagnosticsProperty('checkIn', checkIn))
      ..add(DiagnosticsProperty('checkOut', checkOut))
      ..add(DiagnosticsProperty('observations', observations));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ParkedVehicle &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.licensePlate, licensePlate) ||
                const DeepCollectionEquality()
                    .equals(other.licensePlate, licensePlate)) &&
            (identical(other.color, color) ||
                const DeepCollectionEquality().equals(other.color, color)) &&
            (identical(other.checkIn, checkIn) ||
                const DeepCollectionEquality()
                    .equals(other.checkIn, checkIn)) &&
            (identical(other.checkOut, checkOut) ||
                const DeepCollectionEquality()
                    .equals(other.checkOut, checkOut)) &&
            (identical(other.observations, observations) ||
                const DeepCollectionEquality()
                    .equals(other.observations, observations)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(licensePlate) ^
      const DeepCollectionEquality().hash(color) ^
      const DeepCollectionEquality().hash(checkIn) ^
      const DeepCollectionEquality().hash(checkOut) ^
      const DeepCollectionEquality().hash(observations);

  @JsonKey(ignore: true)
  @override
  _$ParkedVehicleCopyWith<_ParkedVehicle> get copyWith =>
      __$ParkedVehicleCopyWithImpl<_ParkedVehicle>(this, _$identity);
}

abstract class _ParkedVehicle implements ParkedVehicle {
  const factory _ParkedVehicle(
      {@required QRCode id,
      @required String title,
      @required String licensePlate,
      @required VehicleColor color,
      @required DateTime checkIn,
      @required DateTime checkOut,
      @required String observations}) = _$_ParkedVehicle;

  @override
  QRCode get id;
  @override
  String get title;
  @override
  String get licensePlate;
  @override
  VehicleColor get color;
  @override
  DateTime get checkIn;
  @override
  DateTime get checkOut;
  @override
  String get observations;
  @override
  @JsonKey(ignore: true)
  _$ParkedVehicleCopyWith<_ParkedVehicle> get copyWith;
}
