// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'parking_lot_selector_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ParkingLotSelectorEventTearOff {
  const _$ParkingLotSelectorEventTearOff();

// ignore: unused_element
  _Started started() {
    return const _Started();
  }
}

/// @nodoc
// ignore: unused_element
const $ParkingLotSelectorEvent = _$ParkingLotSelectorEventTearOff();

/// @nodoc
mixin _$ParkingLotSelectorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
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
}

/// @nodoc
abstract class $ParkingLotSelectorEventCopyWith<$Res> {
  factory $ParkingLotSelectorEventCopyWith(ParkingLotSelectorEvent value,
          $Res Function(ParkingLotSelectorEvent) then) =
      _$ParkingLotSelectorEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ParkingLotSelectorEventCopyWithImpl<$Res>
    implements $ParkingLotSelectorEventCopyWith<$Res> {
  _$ParkingLotSelectorEventCopyWithImpl(this._value, this._then);

  final ParkingLotSelectorEvent _value;
  // ignore: unused_field
  final $Res Function(ParkingLotSelectorEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res>
    extends _$ParkingLotSelectorEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc
class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'ParkingLotSelectorEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
  }) {
    assert(started != null);
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started();
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

abstract class _Started implements ParkingLotSelectorEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
class _$ParkingLotSelectorStateTearOff {
  const _$ParkingLotSelectorStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _Success success(List<ParkingLot> parkingLots) {
    return _Success(
      parkingLots,
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
const $ParkingLotSelectorState = _$ParkingLotSelectorStateTearOff();

/// @nodoc
mixin _$ParkingLotSelectorState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult success(List<ParkingLot> parkingLots),
    @required TResult error(ParkingFailure failure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult success(List<ParkingLot> parkingLots),
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
abstract class $ParkingLotSelectorStateCopyWith<$Res> {
  factory $ParkingLotSelectorStateCopyWith(ParkingLotSelectorState value,
          $Res Function(ParkingLotSelectorState) then) =
      _$ParkingLotSelectorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ParkingLotSelectorStateCopyWithImpl<$Res>
    implements $ParkingLotSelectorStateCopyWith<$Res> {
  _$ParkingLotSelectorStateCopyWithImpl(this._value, this._then);

  final ParkingLotSelectorState _value;
  // ignore: unused_field
  final $Res Function(ParkingLotSelectorState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$ParkingLotSelectorStateCopyWithImpl<$Res>
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
    return 'ParkingLotSelectorState.initial()';
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
    @required TResult success(List<ParkingLot> parkingLots),
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
    TResult success(List<ParkingLot> parkingLots),
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

abstract class _Initial implements ParkingLotSelectorState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res>
    extends _$ParkingLotSelectorStateCopyWithImpl<$Res>
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
    return 'ParkingLotSelectorState.loading()';
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
    @required TResult success(List<ParkingLot> parkingLots),
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
    TResult success(List<ParkingLot> parkingLots),
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

abstract class _Loading implements ParkingLotSelectorState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$SuccessCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) then) =
      __$SuccessCopyWithImpl<$Res>;
  $Res call({List<ParkingLot> parkingLots});
}

/// @nodoc
class __$SuccessCopyWithImpl<$Res>
    extends _$ParkingLotSelectorStateCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(_Success _value, $Res Function(_Success) _then)
      : super(_value, (v) => _then(v as _Success));

  @override
  _Success get _value => super._value as _Success;

  @override
  $Res call({
    Object parkingLots = freezed,
  }) {
    return _then(_Success(
      parkingLots == freezed
          ? _value.parkingLots
          : parkingLots as List<ParkingLot>,
    ));
  }
}

/// @nodoc
class _$_Success implements _Success {
  const _$_Success(this.parkingLots) : assert(parkingLots != null);

  @override
  final List<ParkingLot> parkingLots;

  @override
  String toString() {
    return 'ParkingLotSelectorState.success(parkingLots: $parkingLots)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Success &&
            (identical(other.parkingLots, parkingLots) ||
                const DeepCollectionEquality()
                    .equals(other.parkingLots, parkingLots)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(parkingLots);

  @JsonKey(ignore: true)
  @override
  _$SuccessCopyWith<_Success> get copyWith =>
      __$SuccessCopyWithImpl<_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult success(List<ParkingLot> parkingLots),
    @required TResult error(ParkingFailure failure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return success(parkingLots);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult success(List<ParkingLot> parkingLots),
    TResult error(ParkingFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(parkingLots);
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

abstract class _Success implements ParkingLotSelectorState {
  const factory _Success(List<ParkingLot> parkingLots) = _$_Success;

  List<ParkingLot> get parkingLots;
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
class __$ErrorCopyWithImpl<$Res>
    extends _$ParkingLotSelectorStateCopyWithImpl<$Res>
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
    return 'ParkingLotSelectorState.error(failure: $failure)';
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
    @required TResult success(List<ParkingLot> parkingLots),
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
    TResult success(List<ParkingLot> parkingLots),
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

abstract class _Error implements ParkingLotSelectorState {
  const factory _Error(ParkingFailure failure) = _$_Error;

  ParkingFailure get failure;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith;
}
