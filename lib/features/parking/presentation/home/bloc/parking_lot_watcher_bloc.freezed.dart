// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'parking_lot_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ParkingLotWatcherEventTearOff {
  const _$ParkingLotWatcherEventTearOff();

// ignore: unused_element
  _WatchStarted watchStarted() {
    return const _WatchStarted();
  }

// ignore: unused_element
  _UpdateReceived updateReceived(
      Either<ParkingFailure, KtList<ParkingLot>> either) {
    return _UpdateReceived(
      either,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ParkingLotWatcherEvent = _$ParkingLotWatcherEventTearOff();

/// @nodoc
mixin _$ParkingLotWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchStarted(),
    @required
        TResult updateReceived(
            Either<ParkingFailure, KtList<ParkingLot>> either),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchStarted(),
    TResult updateReceived(Either<ParkingFailure, KtList<ParkingLot>> either),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchStarted(_WatchStarted value),
    @required TResult updateReceived(_UpdateReceived value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchStarted(_WatchStarted value),
    TResult updateReceived(_UpdateReceived value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ParkingLotWatcherEventCopyWith<$Res> {
  factory $ParkingLotWatcherEventCopyWith(ParkingLotWatcherEvent value,
          $Res Function(ParkingLotWatcherEvent) then) =
      _$ParkingLotWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ParkingLotWatcherEventCopyWithImpl<$Res>
    implements $ParkingLotWatcherEventCopyWith<$Res> {
  _$ParkingLotWatcherEventCopyWithImpl(this._value, this._then);

  final ParkingLotWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(ParkingLotWatcherEvent) _then;
}

/// @nodoc
abstract class _$WatchStartedCopyWith<$Res> {
  factory _$WatchStartedCopyWith(
          _WatchStarted value, $Res Function(_WatchStarted) then) =
      __$WatchStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchStartedCopyWithImpl<$Res>
    extends _$ParkingLotWatcherEventCopyWithImpl<$Res>
    implements _$WatchStartedCopyWith<$Res> {
  __$WatchStartedCopyWithImpl(
      _WatchStarted _value, $Res Function(_WatchStarted) _then)
      : super(_value, (v) => _then(v as _WatchStarted));

  @override
  _WatchStarted get _value => super._value as _WatchStarted;
}

/// @nodoc
class _$_WatchStarted implements _WatchStarted {
  const _$_WatchStarted();

  @override
  String toString() {
    return 'ParkingLotWatcherEvent.watchStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchStarted(),
    @required
        TResult updateReceived(
            Either<ParkingFailure, KtList<ParkingLot>> either),
  }) {
    assert(watchStarted != null);
    assert(updateReceived != null);
    return watchStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchStarted(),
    TResult updateReceived(Either<ParkingFailure, KtList<ParkingLot>> either),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchStarted != null) {
      return watchStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchStarted(_WatchStarted value),
    @required TResult updateReceived(_UpdateReceived value),
  }) {
    assert(watchStarted != null);
    assert(updateReceived != null);
    return watchStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchStarted(_WatchStarted value),
    TResult updateReceived(_UpdateReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchStarted != null) {
      return watchStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchStarted implements ParkingLotWatcherEvent {
  const factory _WatchStarted() = _$_WatchStarted;
}

/// @nodoc
abstract class _$UpdateReceivedCopyWith<$Res> {
  factory _$UpdateReceivedCopyWith(
          _UpdateReceived value, $Res Function(_UpdateReceived) then) =
      __$UpdateReceivedCopyWithImpl<$Res>;
  $Res call({Either<ParkingFailure, KtList<ParkingLot>> either});
}

/// @nodoc
class __$UpdateReceivedCopyWithImpl<$Res>
    extends _$ParkingLotWatcherEventCopyWithImpl<$Res>
    implements _$UpdateReceivedCopyWith<$Res> {
  __$UpdateReceivedCopyWithImpl(
      _UpdateReceived _value, $Res Function(_UpdateReceived) _then)
      : super(_value, (v) => _then(v as _UpdateReceived));

  @override
  _UpdateReceived get _value => super._value as _UpdateReceived;

  @override
  $Res call({
    Object either = freezed,
  }) {
    return _then(_UpdateReceived(
      either == freezed
          ? _value.either
          : either as Either<ParkingFailure, KtList<ParkingLot>>,
    ));
  }
}

/// @nodoc
class _$_UpdateReceived implements _UpdateReceived {
  const _$_UpdateReceived(this.either) : assert(either != null);

  @override
  final Either<ParkingFailure, KtList<ParkingLot>> either;

  @override
  String toString() {
    return 'ParkingLotWatcherEvent.updateReceived(either: $either)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateReceived &&
            (identical(other.either, either) ||
                const DeepCollectionEquality().equals(other.either, either)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(either);

  @JsonKey(ignore: true)
  @override
  _$UpdateReceivedCopyWith<_UpdateReceived> get copyWith =>
      __$UpdateReceivedCopyWithImpl<_UpdateReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchStarted(),
    @required
        TResult updateReceived(
            Either<ParkingFailure, KtList<ParkingLot>> either),
  }) {
    assert(watchStarted != null);
    assert(updateReceived != null);
    return updateReceived(either);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchStarted(),
    TResult updateReceived(Either<ParkingFailure, KtList<ParkingLot>> either),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateReceived != null) {
      return updateReceived(either);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchStarted(_WatchStarted value),
    @required TResult updateReceived(_UpdateReceived value),
  }) {
    assert(watchStarted != null);
    assert(updateReceived != null);
    return updateReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchStarted(_WatchStarted value),
    TResult updateReceived(_UpdateReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateReceived != null) {
      return updateReceived(this);
    }
    return orElse();
  }
}

abstract class _UpdateReceived implements ParkingLotWatcherEvent {
  const factory _UpdateReceived(
      Either<ParkingFailure, KtList<ParkingLot>> either) = _$_UpdateReceived;

  Either<ParkingFailure, KtList<ParkingLot>> get either;
  @JsonKey(ignore: true)
  _$UpdateReceivedCopyWith<_UpdateReceived> get copyWith;
}

/// @nodoc
class _$ParkingLotWatcherStateTearOff {
  const _$ParkingLotWatcherStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _Success success(KtList<ParkingLot> parkingLots) {
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
const $ParkingLotWatcherState = _$ParkingLotWatcherStateTearOff();

/// @nodoc
mixin _$ParkingLotWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult success(KtList<ParkingLot> parkingLots),
    @required TResult error(ParkingFailure failure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult success(KtList<ParkingLot> parkingLots),
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
abstract class $ParkingLotWatcherStateCopyWith<$Res> {
  factory $ParkingLotWatcherStateCopyWith(ParkingLotWatcherState value,
          $Res Function(ParkingLotWatcherState) then) =
      _$ParkingLotWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ParkingLotWatcherStateCopyWithImpl<$Res>
    implements $ParkingLotWatcherStateCopyWith<$Res> {
  _$ParkingLotWatcherStateCopyWithImpl(this._value, this._then);

  final ParkingLotWatcherState _value;
  // ignore: unused_field
  final $Res Function(ParkingLotWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$ParkingLotWatcherStateCopyWithImpl<$Res>
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
    return 'ParkingLotWatcherState.initial()';
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
    @required TResult success(KtList<ParkingLot> parkingLots),
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
    TResult success(KtList<ParkingLot> parkingLots),
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

abstract class _Initial implements ParkingLotWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res>
    extends _$ParkingLotWatcherStateCopyWithImpl<$Res>
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
    return 'ParkingLotWatcherState.loading()';
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
    @required TResult success(KtList<ParkingLot> parkingLots),
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
    TResult success(KtList<ParkingLot> parkingLots),
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

abstract class _Loading implements ParkingLotWatcherState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$SuccessCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) then) =
      __$SuccessCopyWithImpl<$Res>;
  $Res call({KtList<ParkingLot> parkingLots});
}

/// @nodoc
class __$SuccessCopyWithImpl<$Res>
    extends _$ParkingLotWatcherStateCopyWithImpl<$Res>
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
          : parkingLots as KtList<ParkingLot>,
    ));
  }
}

/// @nodoc
class _$_Success implements _Success {
  const _$_Success(this.parkingLots) : assert(parkingLots != null);

  @override
  final KtList<ParkingLot> parkingLots;

  @override
  String toString() {
    return 'ParkingLotWatcherState.success(parkingLots: $parkingLots)';
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
    @required TResult success(KtList<ParkingLot> parkingLots),
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
    TResult success(KtList<ParkingLot> parkingLots),
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

abstract class _Success implements ParkingLotWatcherState {
  const factory _Success(KtList<ParkingLot> parkingLots) = _$_Success;

  KtList<ParkingLot> get parkingLots;
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
    extends _$ParkingLotWatcherStateCopyWithImpl<$Res>
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
    return 'ParkingLotWatcherState.error(failure: $failure)';
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
    @required TResult success(KtList<ParkingLot> parkingLots),
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
    TResult success(KtList<ParkingLot> parkingLots),
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

abstract class _Error implements ParkingLotWatcherState {
  const factory _Error(ParkingFailure failure) = _$_Error;

  ParkingFailure get failure;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith;
}
