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
      @required @nullable DateTime checkOut,
      @required VehicleType type,
      @required String observations,
      @required bool isActive,
      OwnerData ownerData,
      double overridenPricePerHour}) {
    return _ParkedVehicle(
      id: id,
      title: title,
      licensePlate: licensePlate,
      color: color,
      checkIn: checkIn,
      checkOut: checkOut,
      type: type,
      observations: observations,
      isActive: isActive,
      ownerData: ownerData,
      overridenPricePerHour: overridenPricePerHour,
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
  @nullable
  DateTime get checkOut;
  VehicleType get type;
  String get observations;
  bool get isActive;
  OwnerData get ownerData;
  double get overridenPricePerHour;

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
      @nullable DateTime checkOut,
      VehicleType type,
      String observations,
      bool isActive,
      OwnerData ownerData,
      double overridenPricePerHour});

  $QRCodeCopyWith<$Res> get id;
  $OwnerDataCopyWith<$Res> get ownerData;
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
    Object type = freezed,
    Object observations = freezed,
    Object isActive = freezed,
    Object ownerData = freezed,
    Object overridenPricePerHour = freezed,
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
      type: type == freezed ? _value.type : type as VehicleType,
      observations: observations == freezed
          ? _value.observations
          : observations as String,
      isActive: isActive == freezed ? _value.isActive : isActive as bool,
      ownerData:
          ownerData == freezed ? _value.ownerData : ownerData as OwnerData,
      overridenPricePerHour: overridenPricePerHour == freezed
          ? _value.overridenPricePerHour
          : overridenPricePerHour as double,
    ));
  }

  @override
  $QRCodeCopyWith<$Res> get id {
    if (_value.id == null) {
      return null;
    }
    return $QRCodeCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value));
    });
  }

  @override
  $OwnerDataCopyWith<$Res> get ownerData {
    if (_value.ownerData == null) {
      return null;
    }
    return $OwnerDataCopyWith<$Res>(_value.ownerData, (value) {
      return _then(_value.copyWith(ownerData: value));
    });
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
      @nullable DateTime checkOut,
      VehicleType type,
      String observations,
      bool isActive,
      OwnerData ownerData,
      double overridenPricePerHour});

  @override
  $QRCodeCopyWith<$Res> get id;
  @override
  $OwnerDataCopyWith<$Res> get ownerData;
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
    Object type = freezed,
    Object observations = freezed,
    Object isActive = freezed,
    Object ownerData = freezed,
    Object overridenPricePerHour = freezed,
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
      type: type == freezed ? _value.type : type as VehicleType,
      observations: observations == freezed
          ? _value.observations
          : observations as String,
      isActive: isActive == freezed ? _value.isActive : isActive as bool,
      ownerData:
          ownerData == freezed ? _value.ownerData : ownerData as OwnerData,
      overridenPricePerHour: overridenPricePerHour == freezed
          ? _value.overridenPricePerHour
          : overridenPricePerHour as double,
    ));
  }
}

/// @nodoc
class _$_ParkedVehicle extends _ParkedVehicle with DiagnosticableTreeMixin {
  const _$_ParkedVehicle(
      {@required this.id,
      @required this.title,
      @required this.licensePlate,
      @required this.color,
      @required this.checkIn,
      @required @nullable this.checkOut,
      @required this.type,
      @required this.observations,
      @required this.isActive,
      this.ownerData,
      this.overridenPricePerHour})
      : assert(id != null),
        assert(title != null),
        assert(licensePlate != null),
        assert(color != null),
        assert(checkIn != null),
        assert(type != null),
        assert(observations != null),
        assert(isActive != null),
        super._();

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
  @nullable
  final DateTime checkOut;
  @override
  final VehicleType type;
  @override
  final String observations;
  @override
  final bool isActive;
  @override
  final OwnerData ownerData;
  @override
  final double overridenPricePerHour;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ParkedVehicle(id: $id, title: $title, licensePlate: $licensePlate, color: $color, checkIn: $checkIn, checkOut: $checkOut, type: $type, observations: $observations, isActive: $isActive, ownerData: $ownerData, overridenPricePerHour: $overridenPricePerHour)';
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
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('observations', observations))
      ..add(DiagnosticsProperty('isActive', isActive))
      ..add(DiagnosticsProperty('ownerData', ownerData))
      ..add(
          DiagnosticsProperty('overridenPricePerHour', overridenPricePerHour));
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
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.observations, observations) ||
                const DeepCollectionEquality()
                    .equals(other.observations, observations)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)) &&
            (identical(other.ownerData, ownerData) ||
                const DeepCollectionEquality()
                    .equals(other.ownerData, ownerData)) &&
            (identical(other.overridenPricePerHour, overridenPricePerHour) ||
                const DeepCollectionEquality().equals(
                    other.overridenPricePerHour, overridenPricePerHour)));
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
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(observations) ^
      const DeepCollectionEquality().hash(isActive) ^
      const DeepCollectionEquality().hash(ownerData) ^
      const DeepCollectionEquality().hash(overridenPricePerHour);

  @JsonKey(ignore: true)
  @override
  _$ParkedVehicleCopyWith<_ParkedVehicle> get copyWith =>
      __$ParkedVehicleCopyWithImpl<_ParkedVehicle>(this, _$identity);
}

abstract class _ParkedVehicle extends ParkedVehicle {
  const _ParkedVehicle._() : super._();
  const factory _ParkedVehicle(
      {@required QRCode id,
      @required String title,
      @required String licensePlate,
      @required VehicleColor color,
      @required DateTime checkIn,
      @required @nullable DateTime checkOut,
      @required VehicleType type,
      @required String observations,
      @required bool isActive,
      OwnerData ownerData,
      double overridenPricePerHour}) = _$_ParkedVehicle;

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
  @nullable
  DateTime get checkOut;
  @override
  VehicleType get type;
  @override
  String get observations;
  @override
  bool get isActive;
  @override
  OwnerData get ownerData;
  @override
  double get overridenPricePerHour;
  @override
  @JsonKey(ignore: true)
  _$ParkedVehicleCopyWith<_ParkedVehicle> get copyWith;
}
