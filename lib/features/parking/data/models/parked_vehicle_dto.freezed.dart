// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'parked_vehicle_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ParkedVehicleDTO _$ParkedVehicleDTOFromJson(Map<String, dynamic> json) {
  return _ParkedVehicleDTO.fromJson(json);
}

/// @nodoc
class _$ParkedVehicleDTOTearOff {
  const _$ParkedVehicleDTOTearOff();

// ignore: unused_element
  _ParkedVehicleDTO call(
      {@required QRCode id,
      @required String title,
      @required String licensePlate,
      @required VehicleColor color,
      @required DateTime checkIn,
      @required DateTime checkOut,
      @required VehicleType type,
      @required String observations,
      @JsonKey(includeIfNull: false) OwnerDataDTO ownerData}) {
    return _ParkedVehicleDTO(
      id: id,
      title: title,
      licensePlate: licensePlate,
      color: color,
      checkIn: checkIn,
      checkOut: checkOut,
      type: type,
      observations: observations,
      ownerData: ownerData,
    );
  }

// ignore: unused_element
  ParkedVehicleDTO fromJson(Map<String, Object> json) {
    return ParkedVehicleDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ParkedVehicleDTO = _$ParkedVehicleDTOTearOff();

/// @nodoc
mixin _$ParkedVehicleDTO {
  QRCode get id;
  String get title;
  String get licensePlate;
  VehicleColor get color;
  DateTime get checkIn;
  DateTime get checkOut;
  VehicleType get type;
  String get observations;
  @JsonKey(includeIfNull: false)
  OwnerDataDTO get ownerData;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ParkedVehicleDTOCopyWith<ParkedVehicleDTO> get copyWith;
}

/// @nodoc
abstract class $ParkedVehicleDTOCopyWith<$Res> {
  factory $ParkedVehicleDTOCopyWith(
          ParkedVehicleDTO value, $Res Function(ParkedVehicleDTO) then) =
      _$ParkedVehicleDTOCopyWithImpl<$Res>;
  $Res call(
      {QRCode id,
      String title,
      String licensePlate,
      VehicleColor color,
      DateTime checkIn,
      DateTime checkOut,
      VehicleType type,
      String observations,
      @JsonKey(includeIfNull: false) OwnerDataDTO ownerData});

  $QRCodeCopyWith<$Res> get id;
  $OwnerDataDTOCopyWith<$Res> get ownerData;
}

/// @nodoc
class _$ParkedVehicleDTOCopyWithImpl<$Res>
    implements $ParkedVehicleDTOCopyWith<$Res> {
  _$ParkedVehicleDTOCopyWithImpl(this._value, this._then);

  final ParkedVehicleDTO _value;
  // ignore: unused_field
  final $Res Function(ParkedVehicleDTO) _then;

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
    Object ownerData = freezed,
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
      ownerData:
          ownerData == freezed ? _value.ownerData : ownerData as OwnerDataDTO,
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
  $OwnerDataDTOCopyWith<$Res> get ownerData {
    if (_value.ownerData == null) {
      return null;
    }
    return $OwnerDataDTOCopyWith<$Res>(_value.ownerData, (value) {
      return _then(_value.copyWith(ownerData: value));
    });
  }
}

/// @nodoc
abstract class _$ParkedVehicleDTOCopyWith<$Res>
    implements $ParkedVehicleDTOCopyWith<$Res> {
  factory _$ParkedVehicleDTOCopyWith(
          _ParkedVehicleDTO value, $Res Function(_ParkedVehicleDTO) then) =
      __$ParkedVehicleDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {QRCode id,
      String title,
      String licensePlate,
      VehicleColor color,
      DateTime checkIn,
      DateTime checkOut,
      VehicleType type,
      String observations,
      @JsonKey(includeIfNull: false) OwnerDataDTO ownerData});

  @override
  $QRCodeCopyWith<$Res> get id;
  @override
  $OwnerDataDTOCopyWith<$Res> get ownerData;
}

/// @nodoc
class __$ParkedVehicleDTOCopyWithImpl<$Res>
    extends _$ParkedVehicleDTOCopyWithImpl<$Res>
    implements _$ParkedVehicleDTOCopyWith<$Res> {
  __$ParkedVehicleDTOCopyWithImpl(
      _ParkedVehicleDTO _value, $Res Function(_ParkedVehicleDTO) _then)
      : super(_value, (v) => _then(v as _ParkedVehicleDTO));

  @override
  _ParkedVehicleDTO get _value => super._value as _ParkedVehicleDTO;

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
    Object ownerData = freezed,
  }) {
    return _then(_ParkedVehicleDTO(
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
      ownerData:
          ownerData == freezed ? _value.ownerData : ownerData as OwnerDataDTO,
    ));
  }
}

@JsonSerializable(explicitToJson: true)

/// @nodoc
class _$_ParkedVehicleDTO extends _ParkedVehicleDTO {
  const _$_ParkedVehicleDTO(
      {@required this.id,
      @required this.title,
      @required this.licensePlate,
      @required this.color,
      @required this.checkIn,
      @required this.checkOut,
      @required this.type,
      @required this.observations,
      @JsonKey(includeIfNull: false) this.ownerData})
      : assert(id != null),
        assert(title != null),
        assert(licensePlate != null),
        assert(color != null),
        assert(checkIn != null),
        assert(checkOut != null),
        assert(type != null),
        assert(observations != null),
        super._();

  factory _$_ParkedVehicleDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_ParkedVehicleDTOFromJson(json);

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
  final VehicleType type;
  @override
  final String observations;
  @override
  @JsonKey(includeIfNull: false)
  final OwnerDataDTO ownerData;

  @override
  String toString() {
    return 'ParkedVehicleDTO(id: $id, title: $title, licensePlate: $licensePlate, color: $color, checkIn: $checkIn, checkOut: $checkOut, type: $type, observations: $observations, ownerData: $ownerData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ParkedVehicleDTO &&
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
            (identical(other.ownerData, ownerData) ||
                const DeepCollectionEquality()
                    .equals(other.ownerData, ownerData)));
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
      const DeepCollectionEquality().hash(ownerData);

  @JsonKey(ignore: true)
  @override
  _$ParkedVehicleDTOCopyWith<_ParkedVehicleDTO> get copyWith =>
      __$ParkedVehicleDTOCopyWithImpl<_ParkedVehicleDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ParkedVehicleDTOToJson(this);
  }
}

abstract class _ParkedVehicleDTO extends ParkedVehicleDTO {
  const _ParkedVehicleDTO._() : super._();
  const factory _ParkedVehicleDTO(
          {@required QRCode id,
          @required String title,
          @required String licensePlate,
          @required VehicleColor color,
          @required DateTime checkIn,
          @required DateTime checkOut,
          @required VehicleType type,
          @required String observations,
          @JsonKey(includeIfNull: false) OwnerDataDTO ownerData}) =
      _$_ParkedVehicleDTO;

  factory _ParkedVehicleDTO.fromJson(Map<String, dynamic> json) =
      _$_ParkedVehicleDTO.fromJson;

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
  VehicleType get type;
  @override
  String get observations;
  @override
  @JsonKey(includeIfNull: false)
  OwnerDataDTO get ownerData;
  @override
  @JsonKey(ignore: true)
  _$ParkedVehicleDTOCopyWith<_ParkedVehicleDTO> get copyWith;
}
