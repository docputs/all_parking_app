// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'parking_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ParkingFailureTearOff {
  const _$ParkingFailureTearOff();

// ignore: unused_element
  _ParkingFailure call(String message) {
    return _ParkingFailure(
      message,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ParkingFailure = _$ParkingFailureTearOff();

/// @nodoc
mixin _$ParkingFailure {
  String get message;

  @JsonKey(ignore: true)
  $ParkingFailureCopyWith<ParkingFailure> get copyWith;
}

/// @nodoc
abstract class $ParkingFailureCopyWith<$Res> {
  factory $ParkingFailureCopyWith(
          ParkingFailure value, $Res Function(ParkingFailure) then) =
      _$ParkingFailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ParkingFailureCopyWithImpl<$Res>
    implements $ParkingFailureCopyWith<$Res> {
  _$ParkingFailureCopyWithImpl(this._value, this._then);

  final ParkingFailure _value;
  // ignore: unused_field
  final $Res Function(ParkingFailure) _then;

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
abstract class _$ParkingFailureCopyWith<$Res>
    implements $ParkingFailureCopyWith<$Res> {
  factory _$ParkingFailureCopyWith(
          _ParkingFailure value, $Res Function(_ParkingFailure) then) =
      __$ParkingFailureCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$ParkingFailureCopyWithImpl<$Res>
    extends _$ParkingFailureCopyWithImpl<$Res>
    implements _$ParkingFailureCopyWith<$Res> {
  __$ParkingFailureCopyWithImpl(
      _ParkingFailure _value, $Res Function(_ParkingFailure) _then)
      : super(_value, (v) => _then(v as _ParkingFailure));

  @override
  _ParkingFailure get _value => super._value as _ParkingFailure;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_ParkingFailure(
      message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$_ParkingFailure implements _ParkingFailure {
  const _$_ParkingFailure(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'ParkingFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ParkingFailure &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$ParkingFailureCopyWith<_ParkingFailure> get copyWith =>
      __$ParkingFailureCopyWithImpl<_ParkingFailure>(this, _$identity);
}

abstract class _ParkingFailure implements ParkingFailure {
  const factory _ParkingFailure(String message) = _$_ParkingFailure;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$ParkingFailureCopyWith<_ParkingFailure> get copyWith;
}
