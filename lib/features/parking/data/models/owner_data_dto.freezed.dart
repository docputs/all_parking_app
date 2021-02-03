// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'owner_data_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
OwnerDataDTO _$OwnerDataDTOFromJson(Map<String, dynamic> json) {
  return _OwnerDataDTO.fromJson(json);
}

/// @nodoc
class _$OwnerDataDTOTearOff {
  const _$OwnerDataDTOTearOff();

// ignore: unused_element
  _OwnerDataDTO call(
      {@required String name,
      @required String phoneNumber,
      @required String cpf}) {
    return _OwnerDataDTO(
      name: name,
      phoneNumber: phoneNumber,
      cpf: cpf,
    );
  }

// ignore: unused_element
  OwnerDataDTO fromJson(Map<String, Object> json) {
    return OwnerDataDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $OwnerDataDTO = _$OwnerDataDTOTearOff();

/// @nodoc
mixin _$OwnerDataDTO {
  String get name;
  String get phoneNumber;
  String get cpf;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $OwnerDataDTOCopyWith<OwnerDataDTO> get copyWith;
}

/// @nodoc
abstract class $OwnerDataDTOCopyWith<$Res> {
  factory $OwnerDataDTOCopyWith(
          OwnerDataDTO value, $Res Function(OwnerDataDTO) then) =
      _$OwnerDataDTOCopyWithImpl<$Res>;
  $Res call({String name, String phoneNumber, String cpf});
}

/// @nodoc
class _$OwnerDataDTOCopyWithImpl<$Res> implements $OwnerDataDTOCopyWith<$Res> {
  _$OwnerDataDTOCopyWithImpl(this._value, this._then);

  final OwnerDataDTO _value;
  // ignore: unused_field
  final $Res Function(OwnerDataDTO) _then;

  @override
  $Res call({
    Object name = freezed,
    Object phoneNumber = freezed,
    Object cpf = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
      cpf: cpf == freezed ? _value.cpf : cpf as String,
    ));
  }
}

/// @nodoc
abstract class _$OwnerDataDTOCopyWith<$Res>
    implements $OwnerDataDTOCopyWith<$Res> {
  factory _$OwnerDataDTOCopyWith(
          _OwnerDataDTO value, $Res Function(_OwnerDataDTO) then) =
      __$OwnerDataDTOCopyWithImpl<$Res>;
  @override
  $Res call({String name, String phoneNumber, String cpf});
}

/// @nodoc
class __$OwnerDataDTOCopyWithImpl<$Res> extends _$OwnerDataDTOCopyWithImpl<$Res>
    implements _$OwnerDataDTOCopyWith<$Res> {
  __$OwnerDataDTOCopyWithImpl(
      _OwnerDataDTO _value, $Res Function(_OwnerDataDTO) _then)
      : super(_value, (v) => _then(v as _OwnerDataDTO));

  @override
  _OwnerDataDTO get _value => super._value as _OwnerDataDTO;

  @override
  $Res call({
    Object name = freezed,
    Object phoneNumber = freezed,
    Object cpf = freezed,
  }) {
    return _then(_OwnerDataDTO(
      name: name == freezed ? _value.name : name as String,
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
      cpf: cpf == freezed ? _value.cpf : cpf as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_OwnerDataDTO extends _OwnerDataDTO {
  const _$_OwnerDataDTO(
      {@required this.name, @required this.phoneNumber, @required this.cpf})
      : assert(name != null),
        assert(phoneNumber != null),
        assert(cpf != null),
        super._();

  factory _$_OwnerDataDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_OwnerDataDTOFromJson(json);

  @override
  final String name;
  @override
  final String phoneNumber;
  @override
  final String cpf;

  @override
  String toString() {
    return 'OwnerDataDTO(name: $name, phoneNumber: $phoneNumber, cpf: $cpf)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OwnerDataDTO &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.cpf, cpf) ||
                const DeepCollectionEquality().equals(other.cpf, cpf)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(cpf);

  @JsonKey(ignore: true)
  @override
  _$OwnerDataDTOCopyWith<_OwnerDataDTO> get copyWith =>
      __$OwnerDataDTOCopyWithImpl<_OwnerDataDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_OwnerDataDTOToJson(this);
  }
}

abstract class _OwnerDataDTO extends OwnerDataDTO {
  const _OwnerDataDTO._() : super._();
  const factory _OwnerDataDTO(
      {@required String name,
      @required String phoneNumber,
      @required String cpf}) = _$_OwnerDataDTO;

  factory _OwnerDataDTO.fromJson(Map<String, dynamic> json) =
      _$_OwnerDataDTO.fromJson;

  @override
  String get name;
  @override
  String get phoneNumber;
  @override
  String get cpf;
  @override
  @JsonKey(ignore: true)
  _$OwnerDataDTOCopyWith<_OwnerDataDTO> get copyWith;
}
