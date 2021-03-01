// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'qr_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$QRFailureTearOff {
  const _$QRFailureTearOff();

// ignore: unused_element
  _QRFailure call(String message) {
    return _QRFailure(
      message,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $QRFailure = _$QRFailureTearOff();

/// @nodoc
mixin _$QRFailure {
  String get message;

  @JsonKey(ignore: true)
  $QRFailureCopyWith<QRFailure> get copyWith;
}

/// @nodoc
abstract class $QRFailureCopyWith<$Res> {
  factory $QRFailureCopyWith(QRFailure value, $Res Function(QRFailure) then) =
      _$QRFailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$QRFailureCopyWithImpl<$Res> implements $QRFailureCopyWith<$Res> {
  _$QRFailureCopyWithImpl(this._value, this._then);

  final QRFailure _value;
  // ignore: unused_field
  final $Res Function(QRFailure) _then;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
abstract class _$QRFailureCopyWith<$Res> implements $QRFailureCopyWith<$Res> {
  factory _$QRFailureCopyWith(
          _QRFailure value, $Res Function(_QRFailure) then) =
      __$QRFailureCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$QRFailureCopyWithImpl<$Res> extends _$QRFailureCopyWithImpl<$Res>
    implements _$QRFailureCopyWith<$Res> {
  __$QRFailureCopyWithImpl(_QRFailure _value, $Res Function(_QRFailure) _then)
      : super(_value, (v) => _then(v as _QRFailure));

  @override
  _QRFailure get _value => super._value as _QRFailure;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_QRFailure(
      message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$_QRFailure implements _QRFailure {
  _$_QRFailure(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'QRFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QRFailure &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$QRFailureCopyWith<_QRFailure> get copyWith =>
      __$QRFailureCopyWithImpl<_QRFailure>(this, _$identity);
}

abstract class _QRFailure implements QRFailure {
  factory _QRFailure(String message) = _$_QRFailure;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$QRFailureCopyWith<_QRFailure> get copyWith;
}
