// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'generate_codes_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$GenerateCodesEventTearOff {
  const _$GenerateCodesEventTearOff();

// ignore: unused_element
  _Generate generate(ParkingLot parkingLot) {
    return _Generate(
      parkingLot,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GenerateCodesEvent = _$GenerateCodesEventTearOff();

/// @nodoc
mixin _$GenerateCodesEvent {
  ParkingLot get parkingLot;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult generate(ParkingLot parkingLot),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult generate(ParkingLot parkingLot),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult generate(_Generate value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult generate(_Generate value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $GenerateCodesEventCopyWith<GenerateCodesEvent> get copyWith;
}

/// @nodoc
abstract class $GenerateCodesEventCopyWith<$Res> {
  factory $GenerateCodesEventCopyWith(
          GenerateCodesEvent value, $Res Function(GenerateCodesEvent) then) =
      _$GenerateCodesEventCopyWithImpl<$Res>;
  $Res call({ParkingLot parkingLot});

  $ParkingLotCopyWith<$Res> get parkingLot;
}

/// @nodoc
class _$GenerateCodesEventCopyWithImpl<$Res>
    implements $GenerateCodesEventCopyWith<$Res> {
  _$GenerateCodesEventCopyWithImpl(this._value, this._then);

  final GenerateCodesEvent _value;
  // ignore: unused_field
  final $Res Function(GenerateCodesEvent) _then;

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
abstract class _$GenerateCopyWith<$Res>
    implements $GenerateCodesEventCopyWith<$Res> {
  factory _$GenerateCopyWith(_Generate value, $Res Function(_Generate) then) =
      __$GenerateCopyWithImpl<$Res>;
  @override
  $Res call({ParkingLot parkingLot});

  @override
  $ParkingLotCopyWith<$Res> get parkingLot;
}

/// @nodoc
class __$GenerateCopyWithImpl<$Res>
    extends _$GenerateCodesEventCopyWithImpl<$Res>
    implements _$GenerateCopyWith<$Res> {
  __$GenerateCopyWithImpl(_Generate _value, $Res Function(_Generate) _then)
      : super(_value, (v) => _then(v as _Generate));

  @override
  _Generate get _value => super._value as _Generate;

  @override
  $Res call({
    Object parkingLot = freezed,
  }) {
    return _then(_Generate(
      parkingLot == freezed ? _value.parkingLot : parkingLot as ParkingLot,
    ));
  }
}

/// @nodoc
class _$_Generate implements _Generate {
  const _$_Generate(this.parkingLot) : assert(parkingLot != null);

  @override
  final ParkingLot parkingLot;

  @override
  String toString() {
    return 'GenerateCodesEvent.generate(parkingLot: $parkingLot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Generate &&
            (identical(other.parkingLot, parkingLot) ||
                const DeepCollectionEquality()
                    .equals(other.parkingLot, parkingLot)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(parkingLot);

  @JsonKey(ignore: true)
  @override
  _$GenerateCopyWith<_Generate> get copyWith =>
      __$GenerateCopyWithImpl<_Generate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult generate(ParkingLot parkingLot),
  }) {
    assert(generate != null);
    return generate(parkingLot);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult generate(ParkingLot parkingLot),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (generate != null) {
      return generate(parkingLot);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult generate(_Generate value),
  }) {
    assert(generate != null);
    return generate(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult generate(_Generate value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (generate != null) {
      return generate(this);
    }
    return orElse();
  }
}

abstract class _Generate implements GenerateCodesEvent {
  const factory _Generate(ParkingLot parkingLot) = _$_Generate;

  @override
  ParkingLot get parkingLot;
  @override
  @JsonKey(ignore: true)
  _$GenerateCopyWith<_Generate> get copyWith;
}

/// @nodoc
class _$GenerateCodesStateTearOff {
  const _$GenerateCodesStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _Success success(KtList<QRCode> codes) {
    return _Success(
      codes,
    );
  }

// ignore: unused_element
  _Error error(QRFailure failure) {
    return _Error(
      failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GenerateCodesState = _$GenerateCodesStateTearOff();

/// @nodoc
mixin _$GenerateCodesState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult success(KtList<QRCode> codes),
    @required TResult error(QRFailure failure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult success(KtList<QRCode> codes),
    TResult error(QRFailure failure),
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
abstract class $GenerateCodesStateCopyWith<$Res> {
  factory $GenerateCodesStateCopyWith(
          GenerateCodesState value, $Res Function(GenerateCodesState) then) =
      _$GenerateCodesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GenerateCodesStateCopyWithImpl<$Res>
    implements $GenerateCodesStateCopyWith<$Res> {
  _$GenerateCodesStateCopyWithImpl(this._value, this._then);

  final GenerateCodesState _value;
  // ignore: unused_field
  final $Res Function(GenerateCodesState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$GenerateCodesStateCopyWithImpl<$Res>
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
    return 'GenerateCodesState.initial()';
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
    @required TResult success(KtList<QRCode> codes),
    @required TResult error(QRFailure failure),
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
    TResult success(KtList<QRCode> codes),
    TResult error(QRFailure failure),
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

abstract class _Initial implements GenerateCodesState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res>
    extends _$GenerateCodesStateCopyWithImpl<$Res>
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
    return 'GenerateCodesState.loading()';
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
    @required TResult success(KtList<QRCode> codes),
    @required TResult error(QRFailure failure),
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
    TResult success(KtList<QRCode> codes),
    TResult error(QRFailure failure),
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

abstract class _Loading implements GenerateCodesState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$SuccessCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) then) =
      __$SuccessCopyWithImpl<$Res>;
  $Res call({KtList<QRCode> codes});
}

/// @nodoc
class __$SuccessCopyWithImpl<$Res>
    extends _$GenerateCodesStateCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(_Success _value, $Res Function(_Success) _then)
      : super(_value, (v) => _then(v as _Success));

  @override
  _Success get _value => super._value as _Success;

  @override
  $Res call({
    Object codes = freezed,
  }) {
    return _then(_Success(
      codes == freezed ? _value.codes : codes as KtList<QRCode>,
    ));
  }
}

/// @nodoc
class _$_Success implements _Success {
  const _$_Success(this.codes) : assert(codes != null);

  @override
  final KtList<QRCode> codes;

  @override
  String toString() {
    return 'GenerateCodesState.success(codes: $codes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Success &&
            (identical(other.codes, codes) ||
                const DeepCollectionEquality().equals(other.codes, codes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(codes);

  @JsonKey(ignore: true)
  @override
  _$SuccessCopyWith<_Success> get copyWith =>
      __$SuccessCopyWithImpl<_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult success(KtList<QRCode> codes),
    @required TResult error(QRFailure failure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return success(codes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult success(KtList<QRCode> codes),
    TResult error(QRFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(codes);
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

abstract class _Success implements GenerateCodesState {
  const factory _Success(KtList<QRCode> codes) = _$_Success;

  KtList<QRCode> get codes;
  @JsonKey(ignore: true)
  _$SuccessCopyWith<_Success> get copyWith;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({QRFailure failure});

  $QRFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$GenerateCodesStateCopyWithImpl<$Res>
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
      failure == freezed ? _value.failure : failure as QRFailure,
    ));
  }

  @override
  $QRFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $QRFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$_Error implements _Error {
  const _$_Error(this.failure) : assert(failure != null);

  @override
  final QRFailure failure;

  @override
  String toString() {
    return 'GenerateCodesState.error(failure: $failure)';
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
    @required TResult success(KtList<QRCode> codes),
    @required TResult error(QRFailure failure),
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
    TResult success(KtList<QRCode> codes),
    TResult error(QRFailure failure),
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

abstract class _Error implements GenerateCodesState {
  const factory _Error(QRFailure failure) = _$_Error;

  QRFailure get failure;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith;
}
