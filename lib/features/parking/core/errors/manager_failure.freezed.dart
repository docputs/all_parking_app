// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'manager_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ManagerFailureTearOff {
  const _$ManagerFailureTearOff();

// ignore: unused_element
  _ManagerFailure call(String message) {
    return _ManagerFailure(
      message,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ManagerFailure = _$ManagerFailureTearOff();

/// @nodoc
mixin _$ManagerFailure {
  String get message;

  @JsonKey(ignore: true)
  $ManagerFailureCopyWith<ManagerFailure> get copyWith;
}

/// @nodoc
abstract class $ManagerFailureCopyWith<$Res> {
  factory $ManagerFailureCopyWith(
          ManagerFailure value, $Res Function(ManagerFailure) then) =
      _$ManagerFailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ManagerFailureCopyWithImpl<$Res>
    implements $ManagerFailureCopyWith<$Res> {
  _$ManagerFailureCopyWithImpl(this._value, this._then);

  final ManagerFailure _value;
  // ignore: unused_field
  final $Res Function(ManagerFailure) _then;

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
abstract class _$ManagerFailureCopyWith<$Res>
    implements $ManagerFailureCopyWith<$Res> {
  factory _$ManagerFailureCopyWith(
          _ManagerFailure value, $Res Function(_ManagerFailure) then) =
      __$ManagerFailureCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$ManagerFailureCopyWithImpl<$Res>
    extends _$ManagerFailureCopyWithImpl<$Res>
    implements _$ManagerFailureCopyWith<$Res> {
  __$ManagerFailureCopyWithImpl(
      _ManagerFailure _value, $Res Function(_ManagerFailure) _then)
      : super(_value, (v) => _then(v as _ManagerFailure));

  @override
  _ManagerFailure get _value => super._value as _ManagerFailure;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_ManagerFailure(
      message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$_ManagerFailure implements _ManagerFailure {
  const _$_ManagerFailure(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'ManagerFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ManagerFailure &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$ManagerFailureCopyWith<_ManagerFailure> get copyWith =>
      __$ManagerFailureCopyWithImpl<_ManagerFailure>(this, _$identity);
}

abstract class _ManagerFailure implements ManagerFailure {
  const factory _ManagerFailure(String message) = _$_ManagerFailure;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$ManagerFailureCopyWith<_ManagerFailure> get copyWith;
}
