// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'find_check_out_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FindCheckOutEventTearOff {
  const _$FindCheckOutEventTearOff();

// ignore: unused_element
  _Started started({@required BuildContext context, @required QRCode code}) {
    return _Started(
      context: context,
      code: code,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FindCheckOutEvent = _$FindCheckOutEventTearOff();

/// @nodoc
mixin _$FindCheckOutEvent {
  BuildContext get context;
  QRCode get code;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(BuildContext context, QRCode code),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(BuildContext context, QRCode code),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $FindCheckOutEventCopyWith<FindCheckOutEvent> get copyWith;
}

/// @nodoc
abstract class $FindCheckOutEventCopyWith<$Res> {
  factory $FindCheckOutEventCopyWith(
          FindCheckOutEvent value, $Res Function(FindCheckOutEvent) then) =
      _$FindCheckOutEventCopyWithImpl<$Res>;
  $Res call({BuildContext context, QRCode code});

  $QRCodeCopyWith<$Res> get code;
}

/// @nodoc
class _$FindCheckOutEventCopyWithImpl<$Res>
    implements $FindCheckOutEventCopyWith<$Res> {
  _$FindCheckOutEventCopyWithImpl(this._value, this._then);

  final FindCheckOutEvent _value;
  // ignore: unused_field
  final $Res Function(FindCheckOutEvent) _then;

  @override
  $Res call({
    Object context = freezed,
    Object code = freezed,
  }) {
    return _then(_value.copyWith(
      context: context == freezed ? _value.context : context as BuildContext,
      code: code == freezed ? _value.code : code as QRCode,
    ));
  }

  @override
  $QRCodeCopyWith<$Res> get code {
    if (_value.code == null) {
      return null;
    }
    return $QRCodeCopyWith<$Res>(_value.code, (value) {
      return _then(_value.copyWith(code: value));
    });
  }
}

/// @nodoc
abstract class _$StartedCopyWith<$Res>
    implements $FindCheckOutEventCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
  @override
  $Res call({BuildContext context, QRCode code});

  @override
  $QRCodeCopyWith<$Res> get code;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$FindCheckOutEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;

  @override
  $Res call({
    Object context = freezed,
    Object code = freezed,
  }) {
    return _then(_Started(
      context: context == freezed ? _value.context : context as BuildContext,
      code: code == freezed ? _value.code : code as QRCode,
    ));
  }
}

/// @nodoc
class _$_Started implements _Started {
  const _$_Started({@required this.context, @required this.code})
      : assert(context != null),
        assert(code != null);

  @override
  final BuildContext context;
  @override
  final QRCode code;

  @override
  String toString() {
    return 'FindCheckOutEvent.started(context: $context, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Started &&
            (identical(other.context, context) ||
                const DeepCollectionEquality()
                    .equals(other.context, context)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(context) ^
      const DeepCollectionEquality().hash(code);

  @JsonKey(ignore: true)
  @override
  _$StartedCopyWith<_Started> get copyWith =>
      __$StartedCopyWithImpl<_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(BuildContext context, QRCode code),
  }) {
    assert(started != null);
    return started(context, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(BuildContext context, QRCode code),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started(context, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
  }) {
    assert(started != null);
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements FindCheckOutEvent {
  const factory _Started(
      {@required BuildContext context, @required QRCode code}) = _$_Started;

  @override
  BuildContext get context;
  @override
  QRCode get code;
  @override
  @JsonKey(ignore: true)
  _$StartedCopyWith<_Started> get copyWith;
}

/// @nodoc
class _$FindCheckOutStateTearOff {
  const _$FindCheckOutStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _Success success(ParkedVehicle vehicle) {
    return _Success(
      vehicle,
    );
  }

// ignore: unused_element
  _Error error(ParkingFailure failure) {
    return _Error(
      failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FindCheckOutState = _$FindCheckOutStateTearOff();

/// @nodoc
mixin _$FindCheckOutState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult success(ParkedVehicle vehicle),
    @required TResult error(ParkingFailure failure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult success(ParkedVehicle vehicle),
    TResult error(ParkingFailure failure),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult success(_Success value),
    @required TResult error(_Error value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult success(_Success value),
    TResult error(_Error value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $FindCheckOutStateCopyWith<$Res> {
  factory $FindCheckOutStateCopyWith(
          FindCheckOutState value, $Res Function(FindCheckOutState) then) =
      _$FindCheckOutStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FindCheckOutStateCopyWithImpl<$Res>
    implements $FindCheckOutStateCopyWith<$Res> {
  _$FindCheckOutStateCopyWithImpl(this._value, this._then);

  final FindCheckOutState _value;
  // ignore: unused_field
  final $Res Function(FindCheckOutState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$FindCheckOutStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'FindCheckOutState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult success(ParkedVehicle vehicle),
    @required TResult error(ParkingFailure failure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult success(ParkedVehicle vehicle),
    TResult error(ParkingFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult success(_Success value),
    @required TResult error(_Error value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult success(_Success value),
    TResult error(_Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FindCheckOutState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$FindCheckOutStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc
class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'FindCheckOutState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult success(ParkedVehicle vehicle),
    @required TResult error(ParkingFailure failure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult success(ParkedVehicle vehicle),
    TResult error(ParkingFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult success(_Success value),
    @required TResult error(_Error value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult success(_Success value),
    TResult error(_Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements FindCheckOutState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$SuccessCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) then) =
      __$SuccessCopyWithImpl<$Res>;
  $Res call({ParkedVehicle vehicle});

  $ParkedVehicleCopyWith<$Res> get vehicle;
}

/// @nodoc
class __$SuccessCopyWithImpl<$Res> extends _$FindCheckOutStateCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(_Success _value, $Res Function(_Success) _then)
      : super(_value, (v) => _then(v as _Success));

  @override
  _Success get _value => super._value as _Success;

  @override
  $Res call({
    Object vehicle = freezed,
  }) {
    return _then(_Success(
      vehicle == freezed ? _value.vehicle : vehicle as ParkedVehicle,
    ));
  }

  @override
  $ParkedVehicleCopyWith<$Res> get vehicle {
    if (_value.vehicle == null) {
      return null;
    }
    return $ParkedVehicleCopyWith<$Res>(_value.vehicle, (value) {
      return _then(_value.copyWith(vehicle: value));
    });
  }
}

/// @nodoc
class _$_Success implements _Success {
  const _$_Success(this.vehicle) : assert(vehicle != null);

  @override
  final ParkedVehicle vehicle;

  @override
  String toString() {
    return 'FindCheckOutState.success(vehicle: $vehicle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Success &&
            (identical(other.vehicle, vehicle) ||
                const DeepCollectionEquality().equals(other.vehicle, vehicle)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(vehicle);

  @JsonKey(ignore: true)
  @override
  _$SuccessCopyWith<_Success> get copyWith =>
      __$SuccessCopyWithImpl<_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult success(ParkedVehicle vehicle),
    @required TResult error(ParkingFailure failure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return success(vehicle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult success(ParkedVehicle vehicle),
    TResult error(ParkingFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(vehicle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult success(_Success value),
    @required TResult error(_Error value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult success(_Success value),
    TResult error(_Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements FindCheckOutState {
  const factory _Success(ParkedVehicle vehicle) = _$_Success;

  ParkedVehicle get vehicle;
  @JsonKey(ignore: true)
  _$SuccessCopyWith<_Success> get copyWith;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({ParkingFailure failure});

  $ParkingFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$FindCheckOutStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_Error(
      failure == freezed ? _value.failure : failure as ParkingFailure,
    ));
  }

  @override
  $ParkingFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $ParkingFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$_Error implements _Error {
  const _$_Error(this.failure) : assert(failure != null);

  @override
  final ParkingFailure failure;

  @override
  String toString() {
    return 'FindCheckOutState.error(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Error &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult success(ParkedVehicle vehicle),
    @required TResult error(ParkingFailure failure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult success(ParkedVehicle vehicle),
    TResult error(ParkingFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult success(_Success value),
    @required TResult error(_Error value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult success(_Success value),
    TResult error(_Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements FindCheckOutState {
  const factory _Error(ParkingFailure failure) = _$_Error;

  ParkingFailure get failure;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith;
}
