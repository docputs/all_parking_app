// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'parking_lots_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ParkingLotsStateTearOff {
  const _$ParkingLotsStateTearOff();

// ignore: unused_element
  _Initial<T> initial<T>() {
    return _Initial<T>();
  }

// ignore: unused_element
  _Loading<T> loading<T>() {
    return _Loading<T>();
  }

// ignore: unused_element
  _Success<T> success<T>(T parkingLots) {
    return _Success<T>(
      parkingLots,
    );
  }

// ignore: unused_element
  _Error<T> error<T>(ParkingFailure failure) {
    return _Error<T>(
      failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ParkingLotsState = _$ParkingLotsStateTearOff();

/// @nodoc
mixin _$ParkingLotsState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult success(T parkingLots),
    @required TResult error(ParkingFailure failure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult success(T parkingLots),
    TResult error(ParkingFailure failure),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial<T> value),
    @required TResult loading(_Loading<T> value),
    @required TResult success(_Success<T> value),
    @required TResult error(_Error<T> value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial<T> value),
    TResult loading(_Loading<T> value),
    TResult success(_Success<T> value),
    TResult error(_Error<T> value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ParkingLotsStateCopyWith<T, $Res> {
  factory $ParkingLotsStateCopyWith(
          ParkingLotsState<T> value, $Res Function(ParkingLotsState<T>) then) =
      _$ParkingLotsStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ParkingLotsStateCopyWithImpl<T, $Res>
    implements $ParkingLotsStateCopyWith<T, $Res> {
  _$ParkingLotsStateCopyWithImpl(this._value, this._then);

  final ParkingLotsState<T> _value;
  // ignore: unused_field
  final $Res Function(ParkingLotsState<T>) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<T, $Res> {
  factory _$InitialCopyWith(
          _Initial<T> value, $Res Function(_Initial<T>) then) =
      __$InitialCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<T, $Res>
    extends _$ParkingLotsStateCopyWithImpl<T, $Res>
    implements _$InitialCopyWith<T, $Res> {
  __$InitialCopyWithImpl(_Initial<T> _value, $Res Function(_Initial<T>) _then)
      : super(_value, (v) => _then(v as _Initial<T>));

  @override
  _Initial<T> get _value => super._value as _Initial<T>;
}

/// @nodoc
class _$_Initial<T> implements _Initial<T> {
  const _$_Initial();

  @override
  String toString() {
    return 'ParkingLotsState<$T>.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult success(T parkingLots),
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
    TResult success(T parkingLots),
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
    @required TResult initial(_Initial<T> value),
    @required TResult loading(_Loading<T> value),
    @required TResult success(_Success<T> value),
    @required TResult error(_Error<T> value),
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
    TResult initial(_Initial<T> value),
    TResult loading(_Loading<T> value),
    TResult success(_Success<T> value),
    TResult error(_Error<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements ParkingLotsState<T> {
  const factory _Initial() = _$_Initial<T>;
}

/// @nodoc
abstract class _$LoadingCopyWith<T, $Res> {
  factory _$LoadingCopyWith(
          _Loading<T> value, $Res Function(_Loading<T>) then) =
      __$LoadingCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<T, $Res>
    extends _$ParkingLotsStateCopyWithImpl<T, $Res>
    implements _$LoadingCopyWith<T, $Res> {
  __$LoadingCopyWithImpl(_Loading<T> _value, $Res Function(_Loading<T>) _then)
      : super(_value, (v) => _then(v as _Loading<T>));

  @override
  _Loading<T> get _value => super._value as _Loading<T>;
}

/// @nodoc
class _$_Loading<T> implements _Loading<T> {
  const _$_Loading();

  @override
  String toString() {
    return 'ParkingLotsState<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult success(T parkingLots),
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
    TResult success(T parkingLots),
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
    @required TResult initial(_Initial<T> value),
    @required TResult loading(_Loading<T> value),
    @required TResult success(_Success<T> value),
    @required TResult error(_Error<T> value),
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
    TResult initial(_Initial<T> value),
    TResult loading(_Loading<T> value),
    TResult success(_Success<T> value),
    TResult error(_Error<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading<T> implements ParkingLotsState<T> {
  const factory _Loading() = _$_Loading<T>;
}

/// @nodoc
abstract class _$SuccessCopyWith<T, $Res> {
  factory _$SuccessCopyWith(
          _Success<T> value, $Res Function(_Success<T>) then) =
      __$SuccessCopyWithImpl<T, $Res>;
  $Res call({T parkingLots});
}

/// @nodoc
class __$SuccessCopyWithImpl<T, $Res>
    extends _$ParkingLotsStateCopyWithImpl<T, $Res>
    implements _$SuccessCopyWith<T, $Res> {
  __$SuccessCopyWithImpl(_Success<T> _value, $Res Function(_Success<T>) _then)
      : super(_value, (v) => _then(v as _Success<T>));

  @override
  _Success<T> get _value => super._value as _Success<T>;

  @override
  $Res call({
    Object parkingLots = freezed,
  }) {
    return _then(_Success<T>(
      parkingLots == freezed ? _value.parkingLots : parkingLots as T,
    ));
  }
}

/// @nodoc
class _$_Success<T> implements _Success<T> {
  const _$_Success(this.parkingLots) : assert(parkingLots != null);

  @override
  final T parkingLots;

  @override
  String toString() {
    return 'ParkingLotsState<$T>.success(parkingLots: $parkingLots)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Success<T> &&
            (identical(other.parkingLots, parkingLots) ||
                const DeepCollectionEquality()
                    .equals(other.parkingLots, parkingLots)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(parkingLots);

  @JsonKey(ignore: true)
  @override
  _$SuccessCopyWith<T, _Success<T>> get copyWith =>
      __$SuccessCopyWithImpl<T, _Success<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult success(T parkingLots),
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
    TResult success(T parkingLots),
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
    @required TResult initial(_Initial<T> value),
    @required TResult loading(_Loading<T> value),
    @required TResult success(_Success<T> value),
    @required TResult error(_Error<T> value),
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
    TResult initial(_Initial<T> value),
    TResult loading(_Loading<T> value),
    TResult success(_Success<T> value),
    TResult error(_Error<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success<T> implements ParkingLotsState<T> {
  const factory _Success(T parkingLots) = _$_Success<T>;

  T get parkingLots;
  @JsonKey(ignore: true)
  _$SuccessCopyWith<T, _Success<T>> get copyWith;
}

/// @nodoc
abstract class _$ErrorCopyWith<T, $Res> {
  factory _$ErrorCopyWith(_Error<T> value, $Res Function(_Error<T>) then) =
      __$ErrorCopyWithImpl<T, $Res>;
  $Res call({ParkingFailure failure});

  $ParkingFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$ErrorCopyWithImpl<T, $Res>
    extends _$ParkingLotsStateCopyWithImpl<T, $Res>
    implements _$ErrorCopyWith<T, $Res> {
  __$ErrorCopyWithImpl(_Error<T> _value, $Res Function(_Error<T>) _then)
      : super(_value, (v) => _then(v as _Error<T>));

  @override
  _Error<T> get _value => super._value as _Error<T>;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_Error<T>(
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
class _$_Error<T> implements _Error<T> {
  const _$_Error(this.failure) : assert(failure != null);

  @override
  final ParkingFailure failure;

  @override
  String toString() {
    return 'ParkingLotsState<$T>.error(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Error<T> &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<T, _Error<T>> get copyWith =>
      __$ErrorCopyWithImpl<T, _Error<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult success(T parkingLots),
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
    TResult success(T parkingLots),
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
    @required TResult initial(_Initial<T> value),
    @required TResult loading(_Loading<T> value),
    @required TResult success(_Success<T> value),
    @required TResult error(_Error<T> value),
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
    TResult initial(_Initial<T> value),
    TResult loading(_Loading<T> value),
    TResult success(_Success<T> value),
    TResult error(_Error<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error<T> implements ParkingLotsState<T> {
  const factory _Error(ParkingFailure failure) = _$_Error<T>;

  ParkingFailure get failure;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<T, _Error<T>> get copyWith;
}
