// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'employee_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
EmployeeDTO _$EmployeeDTOFromJson(Map<String, dynamic> json) {
  return _EmployeeDTO.fromJson(json);
}

/// @nodoc
class _$EmployeeDTOTearOff {
  const _$EmployeeDTOTearOff();

// ignore: unused_element
  _EmployeeDTO call(
      {@JsonKey(ignore: true) String id,
      @required String displayName,
      @required AssociatedParkingLotDTO parkingLot,
      @required String phoneNumber,
      @required String cpf,
      @required UserType type}) {
    return _EmployeeDTO(
      id: id,
      displayName: displayName,
      parkingLot: parkingLot,
      phoneNumber: phoneNumber,
      cpf: cpf,
      type: type,
    );
  }

// ignore: unused_element
  EmployeeDTO fromJson(Map<String, Object> json) {
    return EmployeeDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $EmployeeDTO = _$EmployeeDTOTearOff();

/// @nodoc
mixin _$EmployeeDTO {
  @JsonKey(ignore: true)
  String get id;
  String get displayName;
  AssociatedParkingLotDTO get parkingLot;
  String get phoneNumber;
  String get cpf;
  UserType get type;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $EmployeeDTOCopyWith<EmployeeDTO> get copyWith;
}

/// @nodoc
abstract class $EmployeeDTOCopyWith<$Res> {
  factory $EmployeeDTOCopyWith(
          EmployeeDTO value, $Res Function(EmployeeDTO) then) =
      _$EmployeeDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String id,
      String displayName,
      AssociatedParkingLotDTO parkingLot,
      String phoneNumber,
      String cpf,
      UserType type});

  $AssociatedParkingLotDTOCopyWith<$Res> get parkingLot;
}

/// @nodoc
class _$EmployeeDTOCopyWithImpl<$Res> implements $EmployeeDTOCopyWith<$Res> {
  _$EmployeeDTOCopyWithImpl(this._value, this._then);

  final EmployeeDTO _value;
  // ignore: unused_field
  final $Res Function(EmployeeDTO) _then;

  @override
  $Res call({
    Object id = freezed,
    Object displayName = freezed,
    Object parkingLot = freezed,
    Object phoneNumber = freezed,
    Object cpf = freezed,
    Object type = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      displayName:
          displayName == freezed ? _value.displayName : displayName as String,
      parkingLot: parkingLot == freezed
          ? _value.parkingLot
          : parkingLot as AssociatedParkingLotDTO,
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
      cpf: cpf == freezed ? _value.cpf : cpf as String,
      type: type == freezed ? _value.type : type as UserType,
    ));
  }

  @override
  $AssociatedParkingLotDTOCopyWith<$Res> get parkingLot {
    if (_value.parkingLot == null) {
      return null;
    }
    return $AssociatedParkingLotDTOCopyWith<$Res>(_value.parkingLot, (value) {
      return _then(_value.copyWith(parkingLot: value));
    });
  }
}

/// @nodoc
abstract class _$EmployeeDTOCopyWith<$Res>
    implements $EmployeeDTOCopyWith<$Res> {
  factory _$EmployeeDTOCopyWith(
          _EmployeeDTO value, $Res Function(_EmployeeDTO) then) =
      __$EmployeeDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String id,
      String displayName,
      AssociatedParkingLotDTO parkingLot,
      String phoneNumber,
      String cpf,
      UserType type});

  @override
  $AssociatedParkingLotDTOCopyWith<$Res> get parkingLot;
}

/// @nodoc
class __$EmployeeDTOCopyWithImpl<$Res> extends _$EmployeeDTOCopyWithImpl<$Res>
    implements _$EmployeeDTOCopyWith<$Res> {
  __$EmployeeDTOCopyWithImpl(
      _EmployeeDTO _value, $Res Function(_EmployeeDTO) _then)
      : super(_value, (v) => _then(v as _EmployeeDTO));

  @override
  _EmployeeDTO get _value => super._value as _EmployeeDTO;

  @override
  $Res call({
    Object id = freezed,
    Object displayName = freezed,
    Object parkingLot = freezed,
    Object phoneNumber = freezed,
    Object cpf = freezed,
    Object type = freezed,
  }) {
    return _then(_EmployeeDTO(
      id: id == freezed ? _value.id : id as String,
      displayName:
          displayName == freezed ? _value.displayName : displayName as String,
      parkingLot: parkingLot == freezed
          ? _value.parkingLot
          : parkingLot as AssociatedParkingLotDTO,
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
      cpf: cpf == freezed ? _value.cpf : cpf as String,
      type: type == freezed ? _value.type : type as UserType,
    ));
  }
}

@JsonSerializable(explicitToJson: true)

/// @nodoc
class _$_EmployeeDTO extends _EmployeeDTO {
  const _$_EmployeeDTO(
      {@JsonKey(ignore: true) this.id,
      @required this.displayName,
      @required this.parkingLot,
      @required this.phoneNumber,
      @required this.cpf,
      @required this.type})
      : assert(displayName != null),
        assert(parkingLot != null),
        assert(phoneNumber != null),
        assert(cpf != null),
        assert(type != null),
        super._();

  factory _$_EmployeeDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_EmployeeDTOFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final String displayName;
  @override
  final AssociatedParkingLotDTO parkingLot;
  @override
  final String phoneNumber;
  @override
  final String cpf;
  @override
  final UserType type;

  @override
  String toString() {
    return 'EmployeeDTO(id: $id, displayName: $displayName, parkingLot: $parkingLot, phoneNumber: $phoneNumber, cpf: $cpf, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EmployeeDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.parkingLot, parkingLot) ||
                const DeepCollectionEquality()
                    .equals(other.parkingLot, parkingLot)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.cpf, cpf) ||
                const DeepCollectionEquality().equals(other.cpf, cpf)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(parkingLot) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(cpf) ^
      const DeepCollectionEquality().hash(type);

  @JsonKey(ignore: true)
  @override
  _$EmployeeDTOCopyWith<_EmployeeDTO> get copyWith =>
      __$EmployeeDTOCopyWithImpl<_EmployeeDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_EmployeeDTOToJson(this);
  }
}

abstract class _EmployeeDTO extends EmployeeDTO {
  const _EmployeeDTO._() : super._();
  const factory _EmployeeDTO(
      {@JsonKey(ignore: true) String id,
      @required String displayName,
      @required AssociatedParkingLotDTO parkingLot,
      @required String phoneNumber,
      @required String cpf,
      @required UserType type}) = _$_EmployeeDTO;

  factory _EmployeeDTO.fromJson(Map<String, dynamic> json) =
      _$_EmployeeDTO.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  String get displayName;
  @override
  AssociatedParkingLotDTO get parkingLot;
  @override
  String get phoneNumber;
  @override
  String get cpf;
  @override
  UserType get type;
  @override
  @JsonKey(ignore: true)
  _$EmployeeDTOCopyWith<_EmployeeDTO> get copyWith;
}
