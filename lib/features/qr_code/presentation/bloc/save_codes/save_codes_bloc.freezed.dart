// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'save_codes_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SaveCodesEventTearOff {
  const _$SaveCodesEventTearOff();

// ignore: unused_element
  _SaveRequested saveRequested(String fileName) {
    return _SaveRequested(
      fileName,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SaveCodesEvent = _$SaveCodesEventTearOff();

/// @nodoc
mixin _$SaveCodesEvent {
  String get fileName;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult saveRequested(String fileName),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult saveRequested(String fileName),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult saveRequested(_SaveRequested value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult saveRequested(_SaveRequested value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $SaveCodesEventCopyWith<SaveCodesEvent> get copyWith;
}

/// @nodoc
abstract class $SaveCodesEventCopyWith<$Res> {
  factory $SaveCodesEventCopyWith(
          SaveCodesEvent value, $Res Function(SaveCodesEvent) then) =
      _$SaveCodesEventCopyWithImpl<$Res>;
  $Res call({String fileName});
}

/// @nodoc
class _$SaveCodesEventCopyWithImpl<$Res>
    implements $SaveCodesEventCopyWith<$Res> {
  _$SaveCodesEventCopyWithImpl(this._value, this._then);

  final SaveCodesEvent _value;
  // ignore: unused_field
  final $Res Function(SaveCodesEvent) _then;

  @override
  $Res call({
    Object fileName = freezed,
  }) {
    return _then(_value.copyWith(
      fileName: fileName == freezed ? _value.fileName : fileName as String,
    ));
  }
}

/// @nodoc
abstract class _$SaveRequestedCopyWith<$Res>
    implements $SaveCodesEventCopyWith<$Res> {
  factory _$SaveRequestedCopyWith(
          _SaveRequested value, $Res Function(_SaveRequested) then) =
      __$SaveRequestedCopyWithImpl<$Res>;
  @override
  $Res call({String fileName});
}

/// @nodoc
class __$SaveRequestedCopyWithImpl<$Res>
    extends _$SaveCodesEventCopyWithImpl<$Res>
    implements _$SaveRequestedCopyWith<$Res> {
  __$SaveRequestedCopyWithImpl(
      _SaveRequested _value, $Res Function(_SaveRequested) _then)
      : super(_value, (v) => _then(v as _SaveRequested));

  @override
  _SaveRequested get _value => super._value as _SaveRequested;

  @override
  $Res call({
    Object fileName = freezed,
  }) {
    return _then(_SaveRequested(
      fileName == freezed ? _value.fileName : fileName as String,
    ));
  }
}

/// @nodoc
class _$_SaveRequested implements _SaveRequested {
  const _$_SaveRequested(this.fileName) : assert(fileName != null);

  @override
  final String fileName;

  @override
  String toString() {
    return 'SaveCodesEvent.saveRequested(fileName: $fileName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SaveRequested &&
            (identical(other.fileName, fileName) ||
                const DeepCollectionEquality()
                    .equals(other.fileName, fileName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(fileName);

  @JsonKey(ignore: true)
  @override
  _$SaveRequestedCopyWith<_SaveRequested> get copyWith =>
      __$SaveRequestedCopyWithImpl<_SaveRequested>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult saveRequested(String fileName),
  }) {
    assert(saveRequested != null);
    return saveRequested(fileName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult saveRequested(String fileName),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (saveRequested != null) {
      return saveRequested(fileName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult saveRequested(_SaveRequested value),
  }) {
    assert(saveRequested != null);
    return saveRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult saveRequested(_SaveRequested value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (saveRequested != null) {
      return saveRequested(this);
    }
    return orElse();
  }
}

abstract class _SaveRequested implements SaveCodesEvent {
  const factory _SaveRequested(String fileName) = _$_SaveRequested;

  @override
  String get fileName;
  @override
  @JsonKey(ignore: true)
  _$SaveRequestedCopyWith<_SaveRequested> get copyWith;
}

/// @nodoc
class _$SaveCodesStateTearOff {
  const _$SaveCodesStateTearOff();

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
  _Error error(QRFailure failure) {
    return _Error(
      failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SaveCodesState = _$SaveCodesStateTearOff();

/// @nodoc
mixin _$SaveCodesState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult success(File file),
    @required TResult error(QRFailure failure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult success(File file),
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
abstract class $SaveCodesStateCopyWith<$Res> {
  factory $SaveCodesStateCopyWith(
          SaveCodesState value, $Res Function(SaveCodesState) then) =
      _$SaveCodesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SaveCodesStateCopyWithImpl<$Res>
    implements $SaveCodesStateCopyWith<$Res> {
  _$SaveCodesStateCopyWithImpl(this._value, this._then);

  final SaveCodesState _value;
  // ignore: unused_field
  final $Res Function(SaveCodesState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$SaveCodesStateCopyWithImpl<$Res>
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
    return 'SaveCodesState.initial()';
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
    TResult success(File file),
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

abstract class _Initial implements SaveCodesState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$SaveCodesStateCopyWithImpl<$Res>
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
    return 'SaveCodesState.loading()';
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
    TResult success(File file),
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

abstract class _Loading implements SaveCodesState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$SuccessCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) then) =
      __$SuccessCopyWithImpl<$Res>;
  $Res call({File file});
}

/// @nodoc
class __$SuccessCopyWithImpl<$Res> extends _$SaveCodesStateCopyWithImpl<$Res>
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
    return 'SaveCodesState.success(file: $file)';
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
    @required TResult error(QRFailure failure),
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
    TResult error(QRFailure failure),
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

abstract class _Success implements SaveCodesState {
  const factory _Success(File file) = _$_Success;

  File get file;
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
class __$ErrorCopyWithImpl<$Res> extends _$SaveCodesStateCopyWithImpl<$Res>
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
    return 'SaveCodesState.error(failure: $failure)';
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
    TResult success(File file),
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

abstract class _Error implements SaveCodesState {
  const factory _Error(QRFailure failure) = _$_Error;

  QRFailure get failure;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith;
}
