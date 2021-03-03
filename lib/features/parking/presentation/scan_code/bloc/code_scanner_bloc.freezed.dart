// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'code_scanner_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CodeScannerEventTearOff {
  const _$CodeScannerEventTearOff();

// ignore: unused_element
  _Started started({@required QRViewController controller}) {
    return _Started(
      controller: controller,
    );
  }

// ignore: unused_element
  _CodeReceived codeReceived(String code) {
    return _CodeReceived(
      code,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CodeScannerEvent = _$CodeScannerEventTearOff();

/// @nodoc
mixin _$CodeScannerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(QRViewController controller),
    @required TResult codeReceived(String code),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(QRViewController controller),
    TResult codeReceived(String code),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult codeReceived(_CodeReceived value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult codeReceived(_CodeReceived value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $CodeScannerEventCopyWith<$Res> {
  factory $CodeScannerEventCopyWith(
          CodeScannerEvent value, $Res Function(CodeScannerEvent) then) =
      _$CodeScannerEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CodeScannerEventCopyWithImpl<$Res>
    implements $CodeScannerEventCopyWith<$Res> {
  _$CodeScannerEventCopyWithImpl(this._value, this._then);

  final CodeScannerEvent _value;
  // ignore: unused_field
  final $Res Function(CodeScannerEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
  $Res call({QRViewController controller});
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$CodeScannerEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;

  @override
  $Res call({
    Object controller = freezed,
  }) {
    return _then(_Started(
      controller: controller == freezed
          ? _value.controller
          : controller as QRViewController,
    ));
  }
}

/// @nodoc
class _$_Started implements _Started {
  const _$_Started({@required this.controller}) : assert(controller != null);

  @override
  final QRViewController controller;

  @override
  String toString() {
    return 'CodeScannerEvent.started(controller: $controller)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Started &&
            (identical(other.controller, controller) ||
                const DeepCollectionEquality()
                    .equals(other.controller, controller)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(controller);

  @JsonKey(ignore: true)
  @override
  _$StartedCopyWith<_Started> get copyWith =>
      __$StartedCopyWithImpl<_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(QRViewController controller),
    @required TResult codeReceived(String code),
  }) {
    assert(started != null);
    assert(codeReceived != null);
    return started(controller);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(QRViewController controller),
    TResult codeReceived(String code),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started(controller);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult codeReceived(_CodeReceived value),
  }) {
    assert(started != null);
    assert(codeReceived != null);
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult codeReceived(_CodeReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CodeScannerEvent {
  const factory _Started({@required QRViewController controller}) = _$_Started;

  QRViewController get controller;
  @JsonKey(ignore: true)
  _$StartedCopyWith<_Started> get copyWith;
}

/// @nodoc
abstract class _$CodeReceivedCopyWith<$Res> {
  factory _$CodeReceivedCopyWith(
          _CodeReceived value, $Res Function(_CodeReceived) then) =
      __$CodeReceivedCopyWithImpl<$Res>;
  $Res call({String code});
}

/// @nodoc
class __$CodeReceivedCopyWithImpl<$Res>
    extends _$CodeScannerEventCopyWithImpl<$Res>
    implements _$CodeReceivedCopyWith<$Res> {
  __$CodeReceivedCopyWithImpl(
      _CodeReceived _value, $Res Function(_CodeReceived) _then)
      : super(_value, (v) => _then(v as _CodeReceived));

  @override
  _CodeReceived get _value => super._value as _CodeReceived;

  @override
  $Res call({
    Object code = freezed,
  }) {
    return _then(_CodeReceived(
      code == freezed ? _value.code : code as String,
    ));
  }
}

/// @nodoc
class _$_CodeReceived implements _CodeReceived {
  const _$_CodeReceived(this.code) : assert(code != null);

  @override
  final String code;

  @override
  String toString() {
    return 'CodeScannerEvent.codeReceived(code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CodeReceived &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(code);

  @JsonKey(ignore: true)
  @override
  _$CodeReceivedCopyWith<_CodeReceived> get copyWith =>
      __$CodeReceivedCopyWithImpl<_CodeReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(QRViewController controller),
    @required TResult codeReceived(String code),
  }) {
    assert(started != null);
    assert(codeReceived != null);
    return codeReceived(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(QRViewController controller),
    TResult codeReceived(String code),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (codeReceived != null) {
      return codeReceived(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult codeReceived(_CodeReceived value),
  }) {
    assert(started != null);
    assert(codeReceived != null);
    return codeReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult codeReceived(_CodeReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (codeReceived != null) {
      return codeReceived(this);
    }
    return orElse();
  }
}

abstract class _CodeReceived implements CodeScannerEvent {
  const factory _CodeReceived(String code) = _$_CodeReceived;

  String get code;
  @JsonKey(ignore: true)
  _$CodeReceivedCopyWith<_CodeReceived> get copyWith;
}

/// @nodoc
class _$CodeScannerStateTearOff {
  const _$CodeScannerStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Scanned scanned(QRCode code) {
    return _Scanned(
      code,
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
const $CodeScannerState = _$CodeScannerStateTearOff();

/// @nodoc
mixin _$CodeScannerState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult scanned(QRCode code),
    @required TResult error(QRFailure failure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult scanned(QRCode code),
    TResult error(QRFailure failure),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult scanned(_Scanned value),
    @required TResult error(_Error value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult scanned(_Scanned value),
    TResult error(_Error value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $CodeScannerStateCopyWith<$Res> {
  factory $CodeScannerStateCopyWith(
          CodeScannerState value, $Res Function(CodeScannerState) then) =
      _$CodeScannerStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CodeScannerStateCopyWithImpl<$Res>
    implements $CodeScannerStateCopyWith<$Res> {
  _$CodeScannerStateCopyWithImpl(this._value, this._then);

  final CodeScannerState _value;
  // ignore: unused_field
  final $Res Function(CodeScannerState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$CodeScannerStateCopyWithImpl<$Res>
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
    return 'CodeScannerState.initial()';
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
    @required TResult scanned(QRCode code),
    @required TResult error(QRFailure failure),
  }) {
    assert(initial != null);
    assert(scanned != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult scanned(QRCode code),
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
    @required TResult scanned(_Scanned value),
    @required TResult error(_Error value),
  }) {
    assert(initial != null);
    assert(scanned != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult scanned(_Scanned value),
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

abstract class _Initial implements CodeScannerState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ScannedCopyWith<$Res> {
  factory _$ScannedCopyWith(_Scanned value, $Res Function(_Scanned) then) =
      __$ScannedCopyWithImpl<$Res>;
  $Res call({QRCode code});

  $QRCodeCopyWith<$Res> get code;
}

/// @nodoc
class __$ScannedCopyWithImpl<$Res> extends _$CodeScannerStateCopyWithImpl<$Res>
    implements _$ScannedCopyWith<$Res> {
  __$ScannedCopyWithImpl(_Scanned _value, $Res Function(_Scanned) _then)
      : super(_value, (v) => _then(v as _Scanned));

  @override
  _Scanned get _value => super._value as _Scanned;

  @override
  $Res call({
    Object code = freezed,
  }) {
    return _then(_Scanned(
      code == freezed ? _value.code : code as QRCode,
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
class _$_Scanned implements _Scanned {
  const _$_Scanned(this.code) : assert(code != null);

  @override
  final QRCode code;

  @override
  String toString() {
    return 'CodeScannerState.scanned(code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Scanned &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(code);

  @JsonKey(ignore: true)
  @override
  _$ScannedCopyWith<_Scanned> get copyWith =>
      __$ScannedCopyWithImpl<_Scanned>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult scanned(QRCode code),
    @required TResult error(QRFailure failure),
  }) {
    assert(initial != null);
    assert(scanned != null);
    assert(error != null);
    return scanned(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult scanned(QRCode code),
    TResult error(QRFailure failure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (scanned != null) {
      return scanned(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult scanned(_Scanned value),
    @required TResult error(_Error value),
  }) {
    assert(initial != null);
    assert(scanned != null);
    assert(error != null);
    return scanned(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult scanned(_Scanned value),
    TResult error(_Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (scanned != null) {
      return scanned(this);
    }
    return orElse();
  }
}

abstract class _Scanned implements CodeScannerState {
  const factory _Scanned(QRCode code) = _$_Scanned;

  QRCode get code;
  @JsonKey(ignore: true)
  _$ScannedCopyWith<_Scanned> get copyWith;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({QRFailure failure});

  $QRFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$CodeScannerStateCopyWithImpl<$Res>
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
    return 'CodeScannerState.error(failure: $failure)';
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
    @required TResult scanned(QRCode code),
    @required TResult error(QRFailure failure),
  }) {
    assert(initial != null);
    assert(scanned != null);
    assert(error != null);
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult scanned(QRCode code),
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
    @required TResult scanned(_Scanned value),
    @required TResult error(_Error value),
  }) {
    assert(initial != null);
    assert(scanned != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult scanned(_Scanned value),
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

abstract class _Error implements CodeScannerState {
  const factory _Error(QRFailure failure) = _$_Error;

  QRFailure get failure;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith;
}
