// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'parking_lot_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ParkingLotDTO _$ParkingLotDTOFromJson(Map<String, dynamic> json) {
  return _ParkingLotDTO.fromJson(json);
}

/// @nodoc
class _$ParkingLotDTOTearOff {
  const _$ParkingLotDTOTearOff();

// ignore: unused_element
  _ParkingLotDTO call(
      {@JsonKey(ignore: true) String id,
      @required String title,
      @required AddressDTO address,
      @required int availableSpots,
      @required double pricePerHour,
      @required List<ParkedVehicleDTO> parkedVehicles}) {
    return _ParkingLotDTO(
      id: id,
      title: title,
      address: address,
      availableSpots: availableSpots,
      pricePerHour: pricePerHour,
      parkedVehicles: parkedVehicles,
    );
  }

// ignore: unused_element
  ParkingLotDTO fromJson(Map<String, Object> json) {
    return ParkingLotDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ParkingLotDTO = _$ParkingLotDTOTearOff();

/// @nodoc
mixin _$ParkingLotDTO {
  @JsonKey(ignore: true)
  String get id;
  String get title;
  AddressDTO get address;
  int get availableSpots;
  double get pricePerHour;
  List<ParkedVehicleDTO> get parkedVehicles;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ParkingLotDTOCopyWith<ParkingLotDTO> get copyWith;
}

/// @nodoc
abstract class $ParkingLotDTOCopyWith<$Res> {
  factory $ParkingLotDTOCopyWith(
          ParkingLotDTO value, $Res Function(ParkingLotDTO) then) =
      _$ParkingLotDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String id,
      String title,
      AddressDTO address,
      int availableSpots,
      double pricePerHour,
      List<ParkedVehicleDTO> parkedVehicles});

  $AddressDTOCopyWith<$Res> get address;
}

/// @nodoc
class _$ParkingLotDTOCopyWithImpl<$Res>
    implements $ParkingLotDTOCopyWith<$Res> {
  _$ParkingLotDTOCopyWithImpl(this._value, this._then);

  final ParkingLotDTO _value;
  // ignore: unused_field
  final $Res Function(ParkingLotDTO) _then;

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
      address: address == freezed ? _value.address : address as AddressDTO,
      availableSpots: availableSpots == freezed
          ? _value.availableSpots
          : availableSpots as int,
      pricePerHour: pricePerHour == freezed
          ? _value.pricePerHour
          : pricePerHour as double,
      parkedVehicles: parkedVehicles == freezed
          ? _value.parkedVehicles
          : parkedVehicles as List<ParkedVehicleDTO>,
    ));
  }

  @override
  $AddressDTOCopyWith<$Res> get address {
    if (_value.address == null) {
      return null;
    }
    return $AddressDTOCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value));
    });
  }
}

/// @nodoc
abstract class _$ParkingLotDTOCopyWith<$Res>
    implements $ParkingLotDTOCopyWith<$Res> {
  factory _$ParkingLotDTOCopyWith(
          _ParkingLotDTO value, $Res Function(_ParkingLotDTO) then) =
      __$ParkingLotDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String id,
      String title,
      AddressDTO address,
      int availableSpots,
      double pricePerHour,
      List<ParkedVehicleDTO> parkedVehicles});

  @override
  $AddressDTOCopyWith<$Res> get address;
}

/// @nodoc
class __$ParkingLotDTOCopyWithImpl<$Res>
    extends _$ParkingLotDTOCopyWithImpl<$Res>
    implements _$ParkingLotDTOCopyWith<$Res> {
  __$ParkingLotDTOCopyWithImpl(
      _ParkingLotDTO _value, $Res Function(_ParkingLotDTO) _then)
      : super(_value, (v) => _then(v as _ParkingLotDTO));

  @override
  _ParkingLotDTO get _value => super._value as _ParkingLotDTO;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object address = freezed,
    Object availableSpots = freezed,
    Object pricePerHour = freezed,
    Object parkedVehicles = freezed,
  }) {
    return _then(_ParkingLotDTO(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      address: address == freezed ? _value.address : address as AddressDTO,
      availableSpots: availableSpots == freezed
          ? _value.availableSpots
          : availableSpots as int,
      pricePerHour: pricePerHour == freezed
          ? _value.pricePerHour
          : pricePerHour as double,
      parkedVehicles: parkedVehicles == freezed
          ? _value.parkedVehicles
          : parkedVehicles as List<ParkedVehicleDTO>,
    ));
  }
}

@JsonSerializable(explicitToJson: true)

/// @nodoc
class _$_ParkingLotDTO extends _ParkingLotDTO with DiagnosticableTreeMixin {
  const _$_ParkingLotDTO(
      {@JsonKey(ignore: true) this.id,
      @required this.title,
      @required this.address,
      @required this.availableSpots,
      @required this.pricePerHour,
      @required this.parkedVehicles})
      : assert(title != null),
        assert(address != null),
        assert(availableSpots != null),
        assert(pricePerHour != null),
        assert(parkedVehicles != null),
        super._();

  factory _$_ParkingLotDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_ParkingLotDTOFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final String title;
  @override
  final AddressDTO address;
  @override
  final int availableSpots;
  @override
  final double pricePerHour;
  @override
  final List<ParkedVehicleDTO> parkedVehicles;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ParkingLotDTO(id: $id, title: $title, address: $address, availableSpots: $availableSpots, pricePerHour: $pricePerHour, parkedVehicles: $parkedVehicles)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ParkingLotDTO'))
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
        (other is _ParkingLotDTO &&
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
  _$ParkingLotDTOCopyWith<_ParkingLotDTO> get copyWith =>
      __$ParkingLotDTOCopyWithImpl<_ParkingLotDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ParkingLotDTOToJson(this);
  }
}

abstract class _ParkingLotDTO extends ParkingLotDTO {
  const _ParkingLotDTO._() : super._();
  const factory _ParkingLotDTO(
      {@JsonKey(ignore: true) String id,
      @required String title,
      @required AddressDTO address,
      @required int availableSpots,
      @required double pricePerHour,
      @required List<ParkedVehicleDTO> parkedVehicles}) = _$_ParkingLotDTO;

  factory _ParkingLotDTO.fromJson(Map<String, dynamic> json) =
      _$_ParkingLotDTO.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  String get title;
  @override
  AddressDTO get address;
  @override
  int get availableSpots;
  @override
  double get pricePerHour;
  @override
  List<ParkedVehicleDTO> get parkedVehicles;
  @override
  @JsonKey(ignore: true)
  _$ParkingLotDTOCopyWith<_ParkingLotDTO> get copyWith;
}
