// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'manager_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ManagerDTO _$ManagerDTOFromJson(Map<String, dynamic> json) {
  return _ManagerDTO.fromJson(json);
}

/// @nodoc
class _$ManagerDTOTearOff {
  const _$ManagerDTOTearOff();

// ignore: unused_element
  _ManagerDTO call(
      {@JsonKey(ignore: true) String id,
      @required String displayName,
      @required String email,
      @required List<String> parkingLots,
      @required List<EmployeeDTO> employees,
      @required UserType type}) {
    return _ManagerDTO(
      id: id,
      displayName: displayName,
      email: email,
      parkingLots: parkingLots,
      employees: employees,
      type: type,
    );
  }

// ignore: unused_element
  ManagerDTO fromJson(Map<String, Object> json) {
    return ManagerDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ManagerDTO = _$ManagerDTOTearOff();

/// @nodoc
mixin _$ManagerDTO {
  @JsonKey(ignore: true)
  String get id;
  String get displayName;
  String get email;
  List<String> get parkingLots;
  List<EmployeeDTO> get employees;
  UserType get type;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ManagerDTOCopyWith<ManagerDTO> get copyWith;
}

/// @nodoc
abstract class $ManagerDTOCopyWith<$Res> {
  factory $ManagerDTOCopyWith(
          ManagerDTO value, $Res Function(ManagerDTO) then) =
      _$ManagerDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String id,
      String displayName,
      String email,
      List<String> parkingLots,
      List<EmployeeDTO> employees,
      UserType type});
}

/// @nodoc
class _$ManagerDTOCopyWithImpl<$Res> implements $ManagerDTOCopyWith<$Res> {
  _$ManagerDTOCopyWithImpl(this._value, this._then);

  final ManagerDTO _value;
  // ignore: unused_field
  final $Res Function(ManagerDTO) _then;

  @override
  $Res call({
    Object id = freezed,
    Object displayName = freezed,
    Object email = freezed,
    Object parkingLots = freezed,
    Object employees = freezed,
    Object type = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      displayName:
          displayName == freezed ? _value.displayName : displayName as String,
      email: email == freezed ? _value.email : email as String,
      parkingLots: parkingLots == freezed
          ? _value.parkingLots
          : parkingLots as List<String>,
      employees: employees == freezed
          ? _value.employees
          : employees as List<EmployeeDTO>,
      type: type == freezed ? _value.type : type as UserType,
    ));
  }
}

/// @nodoc
abstract class _$ManagerDTOCopyWith<$Res> implements $ManagerDTOCopyWith<$Res> {
  factory _$ManagerDTOCopyWith(
          _ManagerDTO value, $Res Function(_ManagerDTO) then) =
      __$ManagerDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String id,
      String displayName,
      String email,
      List<String> parkingLots,
      List<EmployeeDTO> employees,
      UserType type});
}

/// @nodoc
class __$ManagerDTOCopyWithImpl<$Res> extends _$ManagerDTOCopyWithImpl<$Res>
    implements _$ManagerDTOCopyWith<$Res> {
  __$ManagerDTOCopyWithImpl(
      _ManagerDTO _value, $Res Function(_ManagerDTO) _then)
      : super(_value, (v) => _then(v as _ManagerDTO));

  @override
  _ManagerDTO get _value => super._value as _ManagerDTO;

  @override
  $Res call({
    Object id = freezed,
    Object displayName = freezed,
    Object email = freezed,
    Object parkingLots = freezed,
    Object employees = freezed,
    Object type = freezed,
  }) {
    return _then(_ManagerDTO(
      id: id == freezed ? _value.id : id as String,
      displayName:
          displayName == freezed ? _value.displayName : displayName as String,
      email: email == freezed ? _value.email : email as String,
      parkingLots: parkingLots == freezed
          ? _value.parkingLots
          : parkingLots as List<String>,
      employees: employees == freezed
          ? _value.employees
          : employees as List<EmployeeDTO>,
      type: type == freezed ? _value.type : type as UserType,
    ));
  }
}

@JsonSerializable(explicitToJson: true)

/// @nodoc
class _$_ManagerDTO extends _ManagerDTO with DiagnosticableTreeMixin {
  const _$_ManagerDTO(
      {@JsonKey(ignore: true) this.id,
      @required this.displayName,
      @required this.email,
      @required this.parkingLots,
      @required this.employees,
      @required this.type})
      : assert(displayName != null),
        assert(email != null),
        assert(parkingLots != null),
        assert(employees != null),
        assert(type != null),
        super._();

  factory _$_ManagerDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_ManagerDTOFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final String displayName;
  @override
  final String email;
  @override
  final List<String> parkingLots;
  @override
  final List<EmployeeDTO> employees;
  @override
  final UserType type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ManagerDTO(id: $id, displayName: $displayName, email: $email, parkingLots: $parkingLots, employees: $employees, type: $type)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ManagerDTO'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('displayName', displayName))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('parkingLots', parkingLots))
      ..add(DiagnosticsProperty('employees', employees))
      ..add(DiagnosticsProperty('type', type));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ManagerDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.parkingLots, parkingLots) ||
                const DeepCollectionEquality()
                    .equals(other.parkingLots, parkingLots)) &&
            (identical(other.employees, employees) ||
                const DeepCollectionEquality()
                    .equals(other.employees, employees)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(parkingLots) ^
      const DeepCollectionEquality().hash(employees) ^
      const DeepCollectionEquality().hash(type);

  @JsonKey(ignore: true)
  @override
  _$ManagerDTOCopyWith<_ManagerDTO> get copyWith =>
      __$ManagerDTOCopyWithImpl<_ManagerDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ManagerDTOToJson(this);
  }
}

abstract class _ManagerDTO extends ManagerDTO {
  const _ManagerDTO._() : super._();
  const factory _ManagerDTO(
      {@JsonKey(ignore: true) String id,
      @required String displayName,
      @required String email,
      @required List<String> parkingLots,
      @required List<EmployeeDTO> employees,
      @required UserType type}) = _$_ManagerDTO;

  factory _ManagerDTO.fromJson(Map<String, dynamic> json) =
      _$_ManagerDTO.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  String get displayName;
  @override
  String get email;
  @override
  List<String> get parkingLots;
  @override
  List<EmployeeDTO> get employees;
  @override
  UserType get type;
  @override
  @JsonKey(ignore: true)
  _$ManagerDTOCopyWith<_ManagerDTO> get copyWith;
}
