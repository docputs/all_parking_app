// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'sign_up_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SignUpEventTearOff {
  const _$SignUpEventTearOff();

// ignore: unused_element
  _DisplayNameChanged displayNameChanged(String displayName) {
    return _DisplayNameChanged(
      displayName,
    );
  }

// ignore: unused_element
  _EmailChanged emailChanged(String email) {
    return _EmailChanged(
      email,
    );
  }

// ignore: unused_element
  _PasswordChanged passwordChanged(String password) {
    return _PasswordChanged(
      password,
    );
  }

// ignore: unused_element
  _SignUpPressed signUpPressed() {
    return const _SignUpPressed();
  }
}

/// @nodoc
// ignore: unused_element
const $SignUpEvent = _$SignUpEventTearOff();

/// @nodoc
mixin _$SignUpEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult displayNameChanged(String displayName),
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password),
    @required TResult signUpPressed(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult displayNameChanged(String displayName),
    TResult emailChanged(String email),
    TResult passwordChanged(String password),
    TResult signUpPressed(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult displayNameChanged(_DisplayNameChanged value),
    @required TResult emailChanged(_EmailChanged value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required TResult signUpPressed(_SignUpPressed value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult displayNameChanged(_DisplayNameChanged value),
    TResult emailChanged(_EmailChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult signUpPressed(_SignUpPressed value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SignUpEventCopyWith<$Res> {
  factory $SignUpEventCopyWith(
          SignUpEvent value, $Res Function(SignUpEvent) then) =
      _$SignUpEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpEventCopyWithImpl<$Res> implements $SignUpEventCopyWith<$Res> {
  _$SignUpEventCopyWithImpl(this._value, this._then);

  final SignUpEvent _value;
  // ignore: unused_field
  final $Res Function(SignUpEvent) _then;
}

/// @nodoc
abstract class _$DisplayNameChangedCopyWith<$Res> {
  factory _$DisplayNameChangedCopyWith(
          _DisplayNameChanged value, $Res Function(_DisplayNameChanged) then) =
      __$DisplayNameChangedCopyWithImpl<$Res>;
  $Res call({String displayName});
}

/// @nodoc
class __$DisplayNameChangedCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res>
    implements _$DisplayNameChangedCopyWith<$Res> {
  __$DisplayNameChangedCopyWithImpl(
      _DisplayNameChanged _value, $Res Function(_DisplayNameChanged) _then)
      : super(_value, (v) => _then(v as _DisplayNameChanged));

  @override
  _DisplayNameChanged get _value => super._value as _DisplayNameChanged;

  @override
  $Res call({
    Object displayName = freezed,
  }) {
    return _then(_DisplayNameChanged(
      displayName == freezed ? _value.displayName : displayName as String,
    ));
  }
}

/// @nodoc
class _$_DisplayNameChanged implements _DisplayNameChanged {
  const _$_DisplayNameChanged(this.displayName) : assert(displayName != null);

  @override
  final String displayName;

  @override
  String toString() {
    return 'SignUpEvent.displayNameChanged(displayName: $displayName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DisplayNameChanged &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(displayName);

  @override
  _$DisplayNameChangedCopyWith<_DisplayNameChanged> get copyWith =>
      __$DisplayNameChangedCopyWithImpl<_DisplayNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult displayNameChanged(String displayName),
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password),
    @required TResult signUpPressed(),
  }) {
    assert(displayNameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signUpPressed != null);
    return displayNameChanged(displayName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult displayNameChanged(String displayName),
    TResult emailChanged(String email),
    TResult passwordChanged(String password),
    TResult signUpPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (displayNameChanged != null) {
      return displayNameChanged(displayName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult displayNameChanged(_DisplayNameChanged value),
    @required TResult emailChanged(_EmailChanged value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required TResult signUpPressed(_SignUpPressed value),
  }) {
    assert(displayNameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signUpPressed != null);
    return displayNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult displayNameChanged(_DisplayNameChanged value),
    TResult emailChanged(_EmailChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult signUpPressed(_SignUpPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (displayNameChanged != null) {
      return displayNameChanged(this);
    }
    return orElse();
  }
}

abstract class _DisplayNameChanged implements SignUpEvent {
  const factory _DisplayNameChanged(String displayName) = _$_DisplayNameChanged;

  String get displayName;
  _$DisplayNameChangedCopyWith<_DisplayNameChanged> get copyWith;
}

/// @nodoc
abstract class _$EmailChangedCopyWith<$Res> {
  factory _$EmailChangedCopyWith(
          _EmailChanged value, $Res Function(_EmailChanged) then) =
      __$EmailChangedCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class __$EmailChangedCopyWithImpl<$Res> extends _$SignUpEventCopyWithImpl<$Res>
    implements _$EmailChangedCopyWith<$Res> {
  __$EmailChangedCopyWithImpl(
      _EmailChanged _value, $Res Function(_EmailChanged) _then)
      : super(_value, (v) => _then(v as _EmailChanged));

  @override
  _EmailChanged get _value => super._value as _EmailChanged;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(_EmailChanged(
      email == freezed ? _value.email : email as String,
    ));
  }
}

/// @nodoc
class _$_EmailChanged implements _EmailChanged {
  const _$_EmailChanged(this.email) : assert(email != null);

  @override
  final String email;

  @override
  String toString() {
    return 'SignUpEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EmailChanged &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @override
  _$EmailChangedCopyWith<_EmailChanged> get copyWith =>
      __$EmailChangedCopyWithImpl<_EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult displayNameChanged(String displayName),
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password),
    @required TResult signUpPressed(),
  }) {
    assert(displayNameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signUpPressed != null);
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult displayNameChanged(String displayName),
    TResult emailChanged(String email),
    TResult passwordChanged(String password),
    TResult signUpPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult displayNameChanged(_DisplayNameChanged value),
    @required TResult emailChanged(_EmailChanged value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required TResult signUpPressed(_SignUpPressed value),
  }) {
    assert(displayNameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signUpPressed != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult displayNameChanged(_DisplayNameChanged value),
    TResult emailChanged(_EmailChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult signUpPressed(_SignUpPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements SignUpEvent {
  const factory _EmailChanged(String email) = _$_EmailChanged;

  String get email;
  _$EmailChangedCopyWith<_EmailChanged> get copyWith;
}

/// @nodoc
abstract class _$PasswordChangedCopyWith<$Res> {
  factory _$PasswordChangedCopyWith(
          _PasswordChanged value, $Res Function(_PasswordChanged) then) =
      __$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String password});
}

/// @nodoc
class __$PasswordChangedCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res>
    implements _$PasswordChangedCopyWith<$Res> {
  __$PasswordChangedCopyWithImpl(
      _PasswordChanged _value, $Res Function(_PasswordChanged) _then)
      : super(_value, (v) => _then(v as _PasswordChanged));

  @override
  _PasswordChanged get _value => super._value as _PasswordChanged;

  @override
  $Res call({
    Object password = freezed,
  }) {
    return _then(_PasswordChanged(
      password == freezed ? _value.password : password as String,
    ));
  }
}

/// @nodoc
class _$_PasswordChanged implements _PasswordChanged {
  const _$_PasswordChanged(this.password) : assert(password != null);

  @override
  final String password;

  @override
  String toString() {
    return 'SignUpEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PasswordChanged &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(password);

  @override
  _$PasswordChangedCopyWith<_PasswordChanged> get copyWith =>
      __$PasswordChangedCopyWithImpl<_PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult displayNameChanged(String displayName),
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password),
    @required TResult signUpPressed(),
  }) {
    assert(displayNameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signUpPressed != null);
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult displayNameChanged(String displayName),
    TResult emailChanged(String email),
    TResult passwordChanged(String password),
    TResult signUpPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult displayNameChanged(_DisplayNameChanged value),
    @required TResult emailChanged(_EmailChanged value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required TResult signUpPressed(_SignUpPressed value),
  }) {
    assert(displayNameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signUpPressed != null);
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult displayNameChanged(_DisplayNameChanged value),
    TResult emailChanged(_EmailChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult signUpPressed(_SignUpPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChanged implements SignUpEvent {
  const factory _PasswordChanged(String password) = _$_PasswordChanged;

  String get password;
  _$PasswordChangedCopyWith<_PasswordChanged> get copyWith;
}

/// @nodoc
abstract class _$SignUpPressedCopyWith<$Res> {
  factory _$SignUpPressedCopyWith(
          _SignUpPressed value, $Res Function(_SignUpPressed) then) =
      __$SignUpPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignUpPressedCopyWithImpl<$Res> extends _$SignUpEventCopyWithImpl<$Res>
    implements _$SignUpPressedCopyWith<$Res> {
  __$SignUpPressedCopyWithImpl(
      _SignUpPressed _value, $Res Function(_SignUpPressed) _then)
      : super(_value, (v) => _then(v as _SignUpPressed));

  @override
  _SignUpPressed get _value => super._value as _SignUpPressed;
}

/// @nodoc
class _$_SignUpPressed implements _SignUpPressed {
  const _$_SignUpPressed();

  @override
  String toString() {
    return 'SignUpEvent.signUpPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SignUpPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult displayNameChanged(String displayName),
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password),
    @required TResult signUpPressed(),
  }) {
    assert(displayNameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signUpPressed != null);
    return signUpPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult displayNameChanged(String displayName),
    TResult emailChanged(String email),
    TResult passwordChanged(String password),
    TResult signUpPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signUpPressed != null) {
      return signUpPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult displayNameChanged(_DisplayNameChanged value),
    @required TResult emailChanged(_EmailChanged value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required TResult signUpPressed(_SignUpPressed value),
  }) {
    assert(displayNameChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signUpPressed != null);
    return signUpPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult displayNameChanged(_DisplayNameChanged value),
    TResult emailChanged(_EmailChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult signUpPressed(_SignUpPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signUpPressed != null) {
      return signUpPressed(this);
    }
    return orElse();
  }
}

abstract class _SignUpPressed implements SignUpEvent {
  const factory _SignUpPressed() = _$_SignUpPressed;
}

/// @nodoc
class _$SignUpStateTearOff {
  const _$SignUpStateTearOff();

// ignore: unused_element
  _SignUpState call(
      {@required
          String displayName,
      @required
          String email,
      @required
          String password,
      @required
          bool isSubmitting,
      @required
          bool showErrorMessages,
      @required
          Option<Either<AuthFailure, Unit>> signUpSuccessOrFailureOption}) {
    return _SignUpState(
      displayName: displayName,
      email: email,
      password: password,
      isSubmitting: isSubmitting,
      showErrorMessages: showErrorMessages,
      signUpSuccessOrFailureOption: signUpSuccessOrFailureOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SignUpState = _$SignUpStateTearOff();

/// @nodoc
mixin _$SignUpState {
  String get displayName;
  String get email;
  String get password;
  bool get isSubmitting;
  bool get showErrorMessages;
  Option<Either<AuthFailure, Unit>> get signUpSuccessOrFailureOption;

  $SignUpStateCopyWith<SignUpState> get copyWith;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res>;
  $Res call(
      {String displayName,
      String email,
      String password,
      bool isSubmitting,
      bool showErrorMessages,
      Option<Either<AuthFailure, Unit>> signUpSuccessOrFailureOption});
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res> implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  final SignUpState _value;
  // ignore: unused_field
  final $Res Function(SignUpState) _then;

  @override
  $Res call({
    Object displayName = freezed,
    Object email = freezed,
    Object password = freezed,
    Object isSubmitting = freezed,
    Object showErrorMessages = freezed,
    Object signUpSuccessOrFailureOption = freezed,
  }) {
    return _then(_value.copyWith(
      displayName:
          displayName == freezed ? _value.displayName : displayName as String,
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      signUpSuccessOrFailureOption: signUpSuccessOrFailureOption == freezed
          ? _value.signUpSuccessOrFailureOption
          : signUpSuccessOrFailureOption as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$SignUpStateCopyWith<$Res>
    implements $SignUpStateCopyWith<$Res> {
  factory _$SignUpStateCopyWith(
          _SignUpState value, $Res Function(_SignUpState) then) =
      __$SignUpStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String displayName,
      String email,
      String password,
      bool isSubmitting,
      bool showErrorMessages,
      Option<Either<AuthFailure, Unit>> signUpSuccessOrFailureOption});
}

/// @nodoc
class __$SignUpStateCopyWithImpl<$Res> extends _$SignUpStateCopyWithImpl<$Res>
    implements _$SignUpStateCopyWith<$Res> {
  __$SignUpStateCopyWithImpl(
      _SignUpState _value, $Res Function(_SignUpState) _then)
      : super(_value, (v) => _then(v as _SignUpState));

  @override
  _SignUpState get _value => super._value as _SignUpState;

  @override
  $Res call({
    Object displayName = freezed,
    Object email = freezed,
    Object password = freezed,
    Object isSubmitting = freezed,
    Object showErrorMessages = freezed,
    Object signUpSuccessOrFailureOption = freezed,
  }) {
    return _then(_SignUpState(
      displayName:
          displayName == freezed ? _value.displayName : displayName as String,
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      signUpSuccessOrFailureOption: signUpSuccessOrFailureOption == freezed
          ? _value.signUpSuccessOrFailureOption
          : signUpSuccessOrFailureOption as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_SignUpState implements _SignUpState {
  const _$_SignUpState(
      {@required this.displayName,
      @required this.email,
      @required this.password,
      @required this.isSubmitting,
      @required this.showErrorMessages,
      @required this.signUpSuccessOrFailureOption})
      : assert(displayName != null),
        assert(email != null),
        assert(password != null),
        assert(isSubmitting != null),
        assert(showErrorMessages != null),
        assert(signUpSuccessOrFailureOption != null);

  @override
  final String displayName;
  @override
  final String email;
  @override
  final String password;
  @override
  final bool isSubmitting;
  @override
  final bool showErrorMessages;
  @override
  final Option<Either<AuthFailure, Unit>> signUpSuccessOrFailureOption;

  @override
  String toString() {
    return 'SignUpState(displayName: $displayName, email: $email, password: $password, isSubmitting: $isSubmitting, showErrorMessages: $showErrorMessages, signUpSuccessOrFailureOption: $signUpSuccessOrFailureOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignUpState &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.signUpSuccessOrFailureOption,
                    signUpSuccessOrFailureOption) ||
                const DeepCollectionEquality().equals(
                    other.signUpSuccessOrFailureOption,
                    signUpSuccessOrFailureOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(signUpSuccessOrFailureOption);

  @override
  _$SignUpStateCopyWith<_SignUpState> get copyWith =>
      __$SignUpStateCopyWithImpl<_SignUpState>(this, _$identity);
}

abstract class _SignUpState implements SignUpState {
  const factory _SignUpState(
          {@required
              String displayName,
          @required
              String email,
          @required
              String password,
          @required
              bool isSubmitting,
          @required
              bool showErrorMessages,
          @required
              Option<Either<AuthFailure, Unit>> signUpSuccessOrFailureOption}) =
      _$_SignUpState;

  @override
  String get displayName;
  @override
  String get email;
  @override
  String get password;
  @override
  bool get isSubmitting;
  @override
  bool get showErrorMessages;
  @override
  Option<Either<AuthFailure, Unit>> get signUpSuccessOrFailureOption;
  @override
  _$SignUpStateCopyWith<_SignUpState> get copyWith;
}
