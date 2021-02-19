// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'sign_in_employee_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SignInEmployeeEventTearOff {
  const _$SignInEmployeeEventTearOff();

// ignore: unused_element
  _Started changedToken(String input) {
    return _Started(
      input,
    );
  }

// ignore: unused_element
  _Submitted submitted() {
    return const _Submitted();
  }
}

/// @nodoc
// ignore: unused_element
const $SignInEmployeeEvent = _$SignInEmployeeEventTearOff();

/// @nodoc
mixin _$SignInEmployeeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changedToken(String input),
    @required TResult submitted(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changedToken(String input),
    TResult submitted(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changedToken(_Started value),
    @required TResult submitted(_Submitted value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changedToken(_Started value),
    TResult submitted(_Submitted value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SignInEmployeeEventCopyWith<$Res> {
  factory $SignInEmployeeEventCopyWith(
          SignInEmployeeEvent value, $Res Function(SignInEmployeeEvent) then) =
      _$SignInEmployeeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInEmployeeEventCopyWithImpl<$Res>
    implements $SignInEmployeeEventCopyWith<$Res> {
  _$SignInEmployeeEventCopyWithImpl(this._value, this._then);

  final SignInEmployeeEvent _value;
  // ignore: unused_field
  final $Res Function(SignInEmployeeEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
  $Res call({String input});
}

/// @nodoc
class __$StartedCopyWithImpl<$Res>
    extends _$SignInEmployeeEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;

  @override
  $Res call({
    Object input = freezed,
  }) {
    return _then(_Started(
      input == freezed ? _value.input : input as String,
    ));
  }
}

/// @nodoc
class _$_Started implements _Started {
  const _$_Started(this.input) : assert(input != null);

  @override
  final String input;

  @override
  String toString() {
    return 'SignInEmployeeEvent.changedToken(input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Started &&
            (identical(other.input, input) ||
                const DeepCollectionEquality().equals(other.input, input)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(input);

  @JsonKey(ignore: true)
  @override
  _$StartedCopyWith<_Started> get copyWith =>
      __$StartedCopyWithImpl<_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changedToken(String input),
    @required TResult submitted(),
  }) {
    assert(changedToken != null);
    assert(submitted != null);
    return changedToken(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changedToken(String input),
    TResult submitted(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedToken != null) {
      return changedToken(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changedToken(_Started value),
    @required TResult submitted(_Submitted value),
  }) {
    assert(changedToken != null);
    assert(submitted != null);
    return changedToken(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changedToken(_Started value),
    TResult submitted(_Submitted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedToken != null) {
      return changedToken(this);
    }
    return orElse();
  }
}

abstract class _Started implements SignInEmployeeEvent {
  const factory _Started(String input) = _$_Started;

  String get input;
  @JsonKey(ignore: true)
  _$StartedCopyWith<_Started> get copyWith;
}

/// @nodoc
abstract class _$SubmittedCopyWith<$Res> {
  factory _$SubmittedCopyWith(
          _Submitted value, $Res Function(_Submitted) then) =
      __$SubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SubmittedCopyWithImpl<$Res>
    extends _$SignInEmployeeEventCopyWithImpl<$Res>
    implements _$SubmittedCopyWith<$Res> {
  __$SubmittedCopyWithImpl(_Submitted _value, $Res Function(_Submitted) _then)
      : super(_value, (v) => _then(v as _Submitted));

  @override
  _Submitted get _value => super._value as _Submitted;
}

/// @nodoc
class _$_Submitted implements _Submitted {
  const _$_Submitted();

  @override
  String toString() {
    return 'SignInEmployeeEvent.submitted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Submitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changedToken(String input),
    @required TResult submitted(),
  }) {
    assert(changedToken != null);
    assert(submitted != null);
    return submitted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changedToken(String input),
    TResult submitted(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (submitted != null) {
      return submitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changedToken(_Started value),
    @required TResult submitted(_Submitted value),
  }) {
    assert(changedToken != null);
    assert(submitted != null);
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changedToken(_Started value),
    TResult submitted(_Submitted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class _Submitted implements SignInEmployeeEvent {
  const factory _Submitted() = _$_Submitted;
}

/// @nodoc
class _$SignInEmployeeStateTearOff {
  const _$SignInEmployeeStateTearOff();

// ignore: unused_element
  _SignInEmployeeState call(
      {@required String token,
      @required bool isSubmitting,
      @required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
      @required bool showErrorMessages}) {
    return _SignInEmployeeState(
      token: token,
      isSubmitting: isSubmitting,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
      showErrorMessages: showErrorMessages,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SignInEmployeeState = _$SignInEmployeeStateTearOff();

/// @nodoc
mixin _$SignInEmployeeState {
  String get token;
  bool get isSubmitting;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;
  bool get showErrorMessages;

  @JsonKey(ignore: true)
  $SignInEmployeeStateCopyWith<SignInEmployeeState> get copyWith;
}

/// @nodoc
abstract class $SignInEmployeeStateCopyWith<$Res> {
  factory $SignInEmployeeStateCopyWith(
          SignInEmployeeState value, $Res Function(SignInEmployeeState) then) =
      _$SignInEmployeeStateCopyWithImpl<$Res>;
  $Res call(
      {String token,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
      bool showErrorMessages});
}

/// @nodoc
class _$SignInEmployeeStateCopyWithImpl<$Res>
    implements $SignInEmployeeStateCopyWith<$Res> {
  _$SignInEmployeeStateCopyWithImpl(this._value, this._then);

  final SignInEmployeeState _value;
  // ignore: unused_field
  final $Res Function(SignInEmployeeState) _then;

  @override
  $Res call({
    Object token = freezed,
    Object isSubmitting = freezed,
    Object authFailureOrSuccessOption = freezed,
    Object showErrorMessages = freezed,
  }) {
    return _then(_value.copyWith(
      token: token == freezed ? _value.token : token as String,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Option<Either<AuthFailure, Unit>>,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
    ));
  }
}

/// @nodoc
abstract class _$SignInEmployeeStateCopyWith<$Res>
    implements $SignInEmployeeStateCopyWith<$Res> {
  factory _$SignInEmployeeStateCopyWith(_SignInEmployeeState value,
          $Res Function(_SignInEmployeeState) then) =
      __$SignInEmployeeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String token,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
      bool showErrorMessages});
}

/// @nodoc
class __$SignInEmployeeStateCopyWithImpl<$Res>
    extends _$SignInEmployeeStateCopyWithImpl<$Res>
    implements _$SignInEmployeeStateCopyWith<$Res> {
  __$SignInEmployeeStateCopyWithImpl(
      _SignInEmployeeState _value, $Res Function(_SignInEmployeeState) _then)
      : super(_value, (v) => _then(v as _SignInEmployeeState));

  @override
  _SignInEmployeeState get _value => super._value as _SignInEmployeeState;

  @override
  $Res call({
    Object token = freezed,
    Object isSubmitting = freezed,
    Object authFailureOrSuccessOption = freezed,
    Object showErrorMessages = freezed,
  }) {
    return _then(_SignInEmployeeState(
      token: token == freezed ? _value.token : token as String,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Option<Either<AuthFailure, Unit>>,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
    ));
  }
}

/// @nodoc
class _$_SignInEmployeeState implements _SignInEmployeeState {
  const _$_SignInEmployeeState(
      {@required this.token,
      @required this.isSubmitting,
      @required this.authFailureOrSuccessOption,
      @required this.showErrorMessages})
      : assert(token != null),
        assert(isSubmitting != null),
        assert(authFailureOrSuccessOption != null),
        assert(showErrorMessages != null);

  @override
  final String token;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;
  @override
  final bool showErrorMessages;

  @override
  String toString() {
    return 'SignInEmployeeState(token: $token, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption, showErrorMessages: $showErrorMessages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInEmployeeState &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(authFailureOrSuccessOption) ^
      const DeepCollectionEquality().hash(showErrorMessages);

  @JsonKey(ignore: true)
  @override
  _$SignInEmployeeStateCopyWith<_SignInEmployeeState> get copyWith =>
      __$SignInEmployeeStateCopyWithImpl<_SignInEmployeeState>(
          this, _$identity);
}

abstract class _SignInEmployeeState implements SignInEmployeeState {
  const factory _SignInEmployeeState(
      {@required String token,
      @required bool isSubmitting,
      @required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
      @required bool showErrorMessages}) = _$_SignInEmployeeState;

  @override
  String get token;
  @override
  bool get isSubmitting;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;
  @override
  bool get showErrorMessages;
  @override
  @JsonKey(ignore: true)
  _$SignInEmployeeStateCopyWith<_SignInEmployeeState> get copyWith;
}
