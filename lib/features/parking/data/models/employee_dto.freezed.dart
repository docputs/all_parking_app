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
      {@JsonKey(ignore: true) String id, @required String displayName}) {
    return _EmployeeDTO(
      id: id,
      displayName: displayName,
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

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $EmployeeDTOCopyWith<EmployeeDTO> get copyWith;
}

/// @nodoc
abstract class $EmployeeDTOCopyWith<$Res> {
  factory $EmployeeDTOCopyWith(
          EmployeeDTO value, $Res Function(EmployeeDTO) then) =
      _$EmployeeDTOCopyWithImpl<$Res>;
  $Res call({@JsonKey(ignore: true) String id, String displayName});
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
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      displayName:
          displayName == freezed ? _value.displayName : displayName as String,
    ));
  }
}

/// @nodoc
abstract class _$EmployeeDTOCopyWith<$Res>
    implements $EmployeeDTOCopyWith<$Res> {
  factory _$EmployeeDTOCopyWith(
          _EmployeeDTO value, $Res Function(_EmployeeDTO) then) =
      __$EmployeeDTOCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(ignore: true) String id, String displayName});
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
  }) {
    return _then(_EmployeeDTO(
      id: id == freezed ? _value.id : id as String,
      displayName:
          displayName == freezed ? _value.displayName : displayName as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_EmployeeDTO extends _EmployeeDTO {
  const _$_EmployeeDTO(
      {@JsonKey(ignore: true) this.id, @required this.displayName})
      : assert(displayName != null),
        super._();

  factory _$_EmployeeDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_EmployeeDTOFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final String displayName;

  @override
  String toString() {
    return 'EmployeeDTO(id: $id, displayName: $displayName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EmployeeDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(displayName);

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
      @required String displayName}) = _$_EmployeeDTO;

  factory _EmployeeDTO.fromJson(Map<String, dynamic> json) =
      _$_EmployeeDTO.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  String get displayName;
  @override
  @JsonKey(ignore: true)
  _$EmployeeDTOCopyWith<_EmployeeDTO> get copyWith;
}
