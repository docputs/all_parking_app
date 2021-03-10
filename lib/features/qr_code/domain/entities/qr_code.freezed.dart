// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'qr_code.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$QRCodeTearOff {
  const _$QRCodeTearOff();

// ignore: unused_element
  _QRCode call(String value) {
    return _QRCode(
      value,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $QRCode = _$QRCodeTearOff();

/// @nodoc
mixin _$QRCode {
  String get value;

  @JsonKey(ignore: true)
  $QRCodeCopyWith<QRCode> get copyWith;
}

/// @nodoc
abstract class $QRCodeCopyWith<$Res> {
  factory $QRCodeCopyWith(QRCode value, $Res Function(QRCode) then) =
      _$QRCodeCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class _$QRCodeCopyWithImpl<$Res> implements $QRCodeCopyWith<$Res> {
  _$QRCodeCopyWithImpl(this._value, this._then);

  final QRCode _value;
  // ignore: unused_field
  final $Res Function(QRCode) _then;

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
abstract class _$QRCodeCopyWith<$Res> implements $QRCodeCopyWith<$Res> {
  factory _$QRCodeCopyWith(_QRCode value, $Res Function(_QRCode) then) =
      __$QRCodeCopyWithImpl<$Res>;
  @override
  $Res call({String value});
}

/// @nodoc
class __$QRCodeCopyWithImpl<$Res> extends _$QRCodeCopyWithImpl<$Res>
    implements _$QRCodeCopyWith<$Res> {
  __$QRCodeCopyWithImpl(_QRCode _value, $Res Function(_QRCode) _then)
      : super(_value, (v) => _then(v as _QRCode));

  @override
  _QRCode get _value => super._value as _QRCode;

  @override
  $Res call({
    Object value = freezed,
  }) {
    return _then(_QRCode(
      value == freezed ? _value.value : value as String,
    ));
  }
}

/// @nodoc
class _$_QRCode implements _QRCode {
  const _$_QRCode(this.value) : assert(value != null);

  @override
  final String value;

  @override
  String toString() {
    return 'QRCode(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QRCode &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$QRCodeCopyWith<_QRCode> get copyWith =>
      __$QRCodeCopyWithImpl<_QRCode>(this, _$identity);
}

abstract class _QRCode implements QRCode {
  const factory _QRCode(String value) = _$_QRCode;

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$QRCodeCopyWith<_QRCode> get copyWith;
}
