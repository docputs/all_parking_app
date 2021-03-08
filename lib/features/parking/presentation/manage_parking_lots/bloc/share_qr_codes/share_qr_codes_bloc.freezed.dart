// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'share_qr_codes_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ShareQrCodesEventTearOff {
  const _$ShareQrCodesEventTearOff();

// ignore: unused_element
  _ShareRequested shareRequested(ParkingLot parkingLot) {
    return _ShareRequested(
      parkingLot,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ShareQrCodesEvent = _$ShareQrCodesEventTearOff();

/// @nodoc
mixin _$ShareQrCodesEvent {
  ParkingLot get parkingLot;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult shareRequested(ParkingLot parkingLot),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult shareRequested(ParkingLot parkingLot),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult shareRequested(_ShareRequested value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult shareRequested(_ShareRequested value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $ShareQrCodesEventCopyWith<ShareQrCodesEvent> get copyWith;
}

/// @nodoc
abstract class $ShareQrCodesEventCopyWith<$Res> {
  factory $ShareQrCodesEventCopyWith(
          ShareQrCodesEvent value, $Res Function(ShareQrCodesEvent) then) =
      _$ShareQrCodesEventCopyWithImpl<$Res>;
  $Res call({ParkingLot parkingLot});

  $ParkingLotCopyWith<$Res> get parkingLot;
}

/// @nodoc
class _$ShareQrCodesEventCopyWithImpl<$Res>
    implements $ShareQrCodesEventCopyWith<$Res> {
  _$ShareQrCodesEventCopyWithImpl(this._value, this._then);

  final ShareQrCodesEvent _value;
  // ignore: unused_field
  final $Res Function(ShareQrCodesEvent) _then;

  @override
  $Res call({
    Object parkingLot = freezed,
  }) {
    return _then(_value.copyWith(
      parkingLot:
          parkingLot == freezed ? _value.parkingLot : parkingLot as ParkingLot,
    ));
  }

  @override
  $ParkingLotCopyWith<$Res> get parkingLot {
    if (_value.parkingLot == null) {
      return null;
    }
    return $ParkingLotCopyWith<$Res>(_value.parkingLot, (value) {
      return _then(_value.copyWith(parkingLot: value));
    });
  }
}

/// @nodoc
abstract class _$ShareRequestedCopyWith<$Res>
    implements $ShareQrCodesEventCopyWith<$Res> {
  factory _$ShareRequestedCopyWith(
          _ShareRequested value, $Res Function(_ShareRequested) then) =
      __$ShareRequestedCopyWithImpl<$Res>;
  @override
  $Res call({ParkingLot parkingLot});

  @override
  $ParkingLotCopyWith<$Res> get parkingLot;
}

/// @nodoc
class __$ShareRequestedCopyWithImpl<$Res>
    extends _$ShareQrCodesEventCopyWithImpl<$Res>
    implements _$ShareRequestedCopyWith<$Res> {
  __$ShareRequestedCopyWithImpl(
      _ShareRequested _value, $Res Function(_ShareRequested) _then)
      : super(_value, (v) => _then(v as _ShareRequested));

  @override
  _ShareRequested get _value => super._value as _ShareRequested;

  @override
  $Res call({
    Object parkingLot = freezed,
  }) {
    return _then(_ShareRequested(
      parkingLot == freezed ? _value.parkingLot : parkingLot as ParkingLot,
    ));
  }
}

/// @nodoc
class _$_ShareRequested implements _ShareRequested {
  const _$_ShareRequested(this.parkingLot) : assert(parkingLot != null);

  @override
  final ParkingLot parkingLot;

  @override
  String toString() {
    return 'ShareQrCodesEvent.shareRequested(parkingLot: $parkingLot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShareRequested &&
            (identical(other.parkingLot, parkingLot) ||
                const DeepCollectionEquality()
                    .equals(other.parkingLot, parkingLot)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(parkingLot);

  @JsonKey(ignore: true)
  @override
  _$ShareRequestedCopyWith<_ShareRequested> get copyWith =>
      __$ShareRequestedCopyWithImpl<_ShareRequested>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult shareRequested(ParkingLot parkingLot),
  }) {
    assert(shareRequested != null);
    return shareRequested(parkingLot);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult shareRequested(ParkingLot parkingLot),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (shareRequested != null) {
      return shareRequested(parkingLot);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult shareRequested(_ShareRequested value),
  }) {
    assert(shareRequested != null);
    return shareRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult shareRequested(_ShareRequested value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (shareRequested != null) {
      return shareRequested(this);
    }
    return orElse();
  }
}

abstract class _ShareRequested implements ShareQrCodesEvent {
  const factory _ShareRequested(ParkingLot parkingLot) = _$_ShareRequested;

  @override
  ParkingLot get parkingLot;
  @override
  @JsonKey(ignore: true)
  _$ShareRequestedCopyWith<_ShareRequested> get copyWith;
}

/// @nodoc
class _$ShareQrCodesStateTearOff {
  const _$ShareQrCodesStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _Success success(File file) {
    return _Success(
      file,
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
const $ShareQrCodesState = _$ShareQrCodesStateTearOff();

/// @nodoc
mixin _$ShareQrCodesState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult success(File file),
    @required TResult error(ParkingFailure failure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult success(File file),
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
abstract class $ShareQrCodesStateCopyWith<$Res> {
  factory $ShareQrCodesStateCopyWith(
          ShareQrCodesState value, $Res Function(ShareQrCodesState) then) =
      _$ShareQrCodesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShareQrCodesStateCopyWithImpl<$Res>
    implements $ShareQrCodesStateCopyWith<$Res> {
  _$ShareQrCodesStateCopyWithImpl(this._value, this._then);

  final ShareQrCodesState _value;
  // ignore: unused_field
  final $Res Function(ShareQrCodesState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$ShareQrCodesStateCopyWithImpl<$Res>
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
    return 'ShareQrCodesState.initial()';
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
    @required TResult success(File file),
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
    TResult success(File file),
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

abstract class _Initial implements ShareQrCodesState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$ShareQrCodesStateCopyWithImpl<$Res>
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
    return 'ShareQrCodesState.loading()';
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
    @required TResult success(File file),
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
    TResult success(File file),
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

abstract class _Loading implements ShareQrCodesState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$SuccessCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) then) =
      __$SuccessCopyWithImpl<$Res>;
  $Res call({File file});
}

/// @nodoc
class __$SuccessCopyWithImpl<$Res> extends _$ShareQrCodesStateCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(_Success _value, $Res Function(_Success) _then)
      : super(_value, (v) => _then(v as _Success));

  @override
  _Success get _value => super._value as _Success;

  @override
  $Res call({
    Object file = freezed,
  }) {
    return _then(_Success(
      file == freezed ? _value.file : file as File,
    ));
  }
}

/// @nodoc
class _$_Success implements _Success {
  const _$_Success(this.file) : assert(file != null);

  @override
  final File file;

  @override
  String toString() {
    return 'ShareQrCodesState.success(file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Success &&
            (identical(other.file, file) ||
                const DeepCollectionEquality().equals(other.file, file)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(file);

  @JsonKey(ignore: true)
  @override
  _$SuccessCopyWith<_Success> get copyWith =>
      __$SuccessCopyWithImpl<_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult success(File file),
    @required TResult error(ParkingFailure failure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return success(file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult success(File file),
    TResult error(ParkingFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(file);
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

abstract class _Success implements ShareQrCodesState {
  const factory _Success(File file) = _$_Success;

  File get file;
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
class __$ErrorCopyWithImpl<$Res> extends _$ShareQrCodesStateCopyWithImpl<$Res>
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
    return 'ShareQrCodesState.error(failure: $failure)';
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
    @required TResult success(File file),
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
    TResult success(File file),
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

abstract class _Error implements ShareQrCodesState {
  const factory _Error(ParkingFailure failure) = _$_Error;

  ParkingFailure get failure;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith;
}
