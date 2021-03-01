// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'qr_code_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
QRCodeDTO _$QRCodeDTOFromJson(Map<String, dynamic> json) {
  return _QRCodeDTO.fromJson(json);
}

/// @nodoc
class _$QRCodeDTOTearOff {
  const _$QRCodeDTOTearOff();

// ignore: unused_element
  _QRCodeDTO call(String value) {
    return _QRCodeDTO(
      value,
    );
  }

// ignore: unused_element
  QRCodeDTO fromJson(Map<String, Object> json) {
    return QRCodeDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $QRCodeDTO = _$QRCodeDTOTearOff();

/// @nodoc
mixin _$QRCodeDTO {
  String get value;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $QRCodeDTOCopyWith<QRCodeDTO> get copyWith;
}

/// @nodoc
abstract class $QRCodeDTOCopyWith<$Res> {
  factory $QRCodeDTOCopyWith(QRCodeDTO value, $Res Function(QRCodeDTO) then) =
      _$QRCodeDTOCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class _$QRCodeDTOCopyWithImpl<$Res> implements $QRCodeDTOCopyWith<$Res> {
  _$QRCodeDTOCopyWithImpl(this._value, this._then);

  final QRCodeDTO _value;
  // ignore: unused_field
  final $Res Function(QRCodeDTO) _then;

  @override
  $Res call({
    Object value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed ? _value.value : value as String,
    ));
  }
}

/// @nodoc
abstract class _$QRCodeDTOCopyWith<$Res> implements $QRCodeDTOCopyWith<$Res> {
  factory _$QRCodeDTOCopyWith(
          _QRCodeDTO value, $Res Function(_QRCodeDTO) then) =
      __$QRCodeDTOCopyWithImpl<$Res>;
  @override
  $Res call({String value});
}

/// @nodoc
class __$QRCodeDTOCopyWithImpl<$Res> extends _$QRCodeDTOCopyWithImpl<$Res>
    implements _$QRCodeDTOCopyWith<$Res> {
  __$QRCodeDTOCopyWithImpl(_QRCodeDTO _value, $Res Function(_QRCodeDTO) _then)
      : super(_value, (v) => _then(v as _QRCodeDTO));

  @override
  _QRCodeDTO get _value => super._value as _QRCodeDTO;

  @override
  $Res call({
    Object value = freezed,
  }) {
    return _then(_QRCodeDTO(
      value == freezed ? _value.value : value as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_QRCodeDTO extends _QRCodeDTO {
  _$_QRCodeDTO(this.value)
      : assert(value != null),
        super._();

  factory _$_QRCodeDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_QRCodeDTOFromJson(json);

  @override
  final String value;

  @override
  String toString() {
    return 'QRCodeDTO(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QRCodeDTO &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$QRCodeDTOCopyWith<_QRCodeDTO> get copyWith =>
      __$QRCodeDTOCopyWithImpl<_QRCodeDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_QRCodeDTOToJson(this);
  }
}

abstract class _QRCodeDTO extends QRCodeDTO {
  _QRCodeDTO._() : super._();
  factory _QRCodeDTO(String value) = _$_QRCodeDTO;

  factory _QRCodeDTO.fromJson(Map<String, dynamic> json) =
      _$_QRCodeDTO.fromJson;

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$QRCodeDTOCopyWith<_QRCodeDTO> get copyWith;
}
