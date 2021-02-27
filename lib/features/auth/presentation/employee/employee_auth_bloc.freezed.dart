// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'employee_auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$EmployeeAuthEventTearOff {
  const _$EmployeeAuthEventTearOff();

// ignore: unused_element
  _AuthCheckRequested authCheckRequested() {
    return const _AuthCheckRequested();
  }

// ignore: unused_element
  _TryAutoSignIn tryAutoSignIn() {
    return const _TryAutoSignIn();
  }

// ignore: unused_element
  _SignedOut signedOut() {
    return const _SignedOut();
  }
}

/// @nodoc
// ignore: unused_element
const $EmployeeAuthEvent = _$EmployeeAuthEventTearOff();

/// @nodoc
mixin _$EmployeeAuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult authCheckRequested(),
    @required TResult tryAutoSignIn(),
    @required TResult signedOut(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult authCheckRequested(),
    TResult tryAutoSignIn(),
    TResult signedOut(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult authCheckRequested(_AuthCheckRequested value),
    @required TResult tryAutoSignIn(_TryAutoSignIn value),
    @required TResult signedOut(_SignedOut value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult authCheckRequested(_AuthCheckRequested value),
    TResult tryAutoSignIn(_TryAutoSignIn value),
    TResult signedOut(_SignedOut value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $EmployeeAuthEventCopyWith<$Res> {
  factory $EmployeeAuthEventCopyWith(
          EmployeeAuthEvent value, $Res Function(EmployeeAuthEvent) then) =
      _$EmployeeAuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmployeeAuthEventCopyWithImpl<$Res>
    implements $EmployeeAuthEventCopyWith<$Res> {
  _$EmployeeAuthEventCopyWithImpl(this._value, this._then);

  final EmployeeAuthEvent _value;
  // ignore: unused_field
  final $Res Function(EmployeeAuthEvent) _then;
}

/// @nodoc
abstract class _$AuthCheckRequestedCopyWith<$Res> {
  factory _$AuthCheckRequestedCopyWith(
          _AuthCheckRequested value, $Res Function(_AuthCheckRequested) then) =
      __$AuthCheckRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$AuthCheckRequestedCopyWithImpl<$Res>
    extends _$EmployeeAuthEventCopyWithImpl<$Res>
    implements _$AuthCheckRequestedCopyWith<$Res> {
  __$AuthCheckRequestedCopyWithImpl(
      _AuthCheckRequested _value, $Res Function(_AuthCheckRequested) _then)
      : super(_value, (v) => _then(v as _AuthCheckRequested));

  @override
  _AuthCheckRequested get _value => super._value as _AuthCheckRequested;
}

/// @nodoc
class _$_AuthCheckRequested implements _AuthCheckRequested {
  const _$_AuthCheckRequested();

  @override
  String toString() {
    return 'EmployeeAuthEvent.authCheckRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AuthCheckRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult authCheckRequested(),
    @required TResult tryAutoSignIn(),
    @required TResult signedOut(),
  }) {
    assert(authCheckRequested != null);
    assert(tryAutoSignIn != null);
    assert(signedOut != null);
    return authCheckRequested();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult authCheckRequested(),
    TResult tryAutoSignIn(),
    TResult signedOut(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (authCheckRequested != null) {
      return authCheckRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult authCheckRequested(_AuthCheckRequested value),
    @required TResult tryAutoSignIn(_TryAutoSignIn value),
    @required TResult signedOut(_SignedOut value),
  }) {
    assert(authCheckRequested != null);
    assert(tryAutoSignIn != null);
    assert(signedOut != null);
    return authCheckRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult authCheckRequested(_AuthCheckRequested value),
    TResult tryAutoSignIn(_TryAutoSignIn value),
    TResult signedOut(_SignedOut value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (authCheckRequested != null) {
      return authCheckRequested(this);
    }
    return orElse();
  }
}

abstract class _AuthCheckRequested implements EmployeeAuthEvent {
  const factory _AuthCheckRequested() = _$_AuthCheckRequested;
}

/// @nodoc
abstract class _$TryAutoSignInCopyWith<$Res> {
  factory _$TryAutoSignInCopyWith(
          _TryAutoSignIn value, $Res Function(_TryAutoSignIn) then) =
      __$TryAutoSignInCopyWithImpl<$Res>;
}

/// @nodoc
class __$TryAutoSignInCopyWithImpl<$Res>
    extends _$EmployeeAuthEventCopyWithImpl<$Res>
    implements _$TryAutoSignInCopyWith<$Res> {
  __$TryAutoSignInCopyWithImpl(
      _TryAutoSignIn _value, $Res Function(_TryAutoSignIn) _then)
      : super(_value, (v) => _then(v as _TryAutoSignIn));

  @override
  _TryAutoSignIn get _value => super._value as _TryAutoSignIn;
}

/// @nodoc
class _$_TryAutoSignIn implements _TryAutoSignIn {
  const _$_TryAutoSignIn();

  @override
  String toString() {
    return 'EmployeeAuthEvent.tryAutoSignIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _TryAutoSignIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult authCheckRequested(),
    @required TResult tryAutoSignIn(),
    @required TResult signedOut(),
  }) {
    assert(authCheckRequested != null);
    assert(tryAutoSignIn != null);
    assert(signedOut != null);
    return tryAutoSignIn();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult authCheckRequested(),
    TResult tryAutoSignIn(),
    TResult signedOut(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (tryAutoSignIn != null) {
      return tryAutoSignIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult authCheckRequested(_AuthCheckRequested value),
    @required TResult tryAutoSignIn(_TryAutoSignIn value),
    @required TResult signedOut(_SignedOut value),
  }) {
    assert(authCheckRequested != null);
    assert(tryAutoSignIn != null);
    assert(signedOut != null);
    return tryAutoSignIn(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult authCheckRequested(_AuthCheckRequested value),
    TResult tryAutoSignIn(_TryAutoSignIn value),
    TResult signedOut(_SignedOut value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (tryAutoSignIn != null) {
      return tryAutoSignIn(this);
    }
    return orElse();
  }
}

abstract class _TryAutoSignIn implements EmployeeAuthEvent {
  const factory _TryAutoSignIn() = _$_TryAutoSignIn;
}

/// @nodoc
abstract class _$SignedOutCopyWith<$Res> {
  factory _$SignedOutCopyWith(
          _SignedOut value, $Res Function(_SignedOut) then) =
      __$SignedOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignedOutCopyWithImpl<$Res>
    extends _$EmployeeAuthEventCopyWithImpl<$Res>
    implements _$SignedOutCopyWith<$Res> {
  __$SignedOutCopyWithImpl(_SignedOut _value, $Res Function(_SignedOut) _then)
      : super(_value, (v) => _then(v as _SignedOut));

  @override
  _SignedOut get _value => super._value as _SignedOut;
}

/// @nodoc
class _$_SignedOut implements _SignedOut {
  const _$_SignedOut();

  @override
  String toString() {
    return 'EmployeeAuthEvent.signedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SignedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult authCheckRequested(),
    @required TResult tryAutoSignIn(),
    @required TResult signedOut(),
  }) {
    assert(authCheckRequested != null);
    assert(tryAutoSignIn != null);
    assert(signedOut != null);
    return signedOut();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult authCheckRequested(),
    TResult tryAutoSignIn(),
    TResult signedOut(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signedOut != null) {
      return signedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult authCheckRequested(_AuthCheckRequested value),
    @required TResult tryAutoSignIn(_TryAutoSignIn value),
    @required TResult signedOut(_SignedOut value),
  }) {
    assert(authCheckRequested != null);
    assert(tryAutoSignIn != null);
    assert(signedOut != null);
    return signedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult authCheckRequested(_AuthCheckRequested value),
    TResult tryAutoSignIn(_TryAutoSignIn value),
    TResult signedOut(_SignedOut value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signedOut != null) {
      return signedOut(this);
    }
    return orElse();
  }
}

abstract class _SignedOut implements EmployeeAuthEvent {
  const factory _SignedOut() = _$_SignedOut;
}

/// @nodoc
class _$EmployeeAuthStateTearOff {
  const _$EmployeeAuthStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Authenticated authenticated(Employee employee) {
    return _Authenticated(
      employee,
    );
  }

// ignore: unused_element
  _Unauthenticated unauthenticated() {
    return const _Unauthenticated();
  }
}

/// @nodoc
// ignore: unused_element
const $EmployeeAuthState = _$EmployeeAuthStateTearOff();

/// @nodoc
mixin _$EmployeeAuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult authenticated(Employee employee),
    @required TResult unauthenticated(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult authenticated(Employee employee),
    TResult unauthenticated(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult authenticated(_Authenticated value),
    @required TResult unauthenticated(_Unauthenticated value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult authenticated(_Authenticated value),
    TResult unauthenticated(_Unauthenticated value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $EmployeeAuthStateCopyWith<$Res> {
  factory $EmployeeAuthStateCopyWith(
          EmployeeAuthState value, $Res Function(EmployeeAuthState) then) =
      _$EmployeeAuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmployeeAuthStateCopyWithImpl<$Res>
    implements $EmployeeAuthStateCopyWith<$Res> {
  _$EmployeeAuthStateCopyWithImpl(this._value, this._then);

  final EmployeeAuthState _value;
  // ignore: unused_field
  final $Res Function(EmployeeAuthState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$EmployeeAuthStateCopyWithImpl<$Res>
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
    return 'EmployeeAuthState.initial()';
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
    @required TResult authenticated(Employee employee),
    @required TResult unauthenticated(),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult authenticated(Employee employee),
    TResult unauthenticated(),
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
    @required TResult authenticated(_Authenticated value),
    @required TResult unauthenticated(_Unauthenticated value),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult authenticated(_Authenticated value),
    TResult unauthenticated(_Unauthenticated value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements EmployeeAuthState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$AuthenticatedCopyWith<$Res> {
  factory _$AuthenticatedCopyWith(
          _Authenticated value, $Res Function(_Authenticated) then) =
      __$AuthenticatedCopyWithImpl<$Res>;
  $Res call({Employee employee});
}

/// @nodoc
class __$AuthenticatedCopyWithImpl<$Res>
    extends _$EmployeeAuthStateCopyWithImpl<$Res>
    implements _$AuthenticatedCopyWith<$Res> {
  __$AuthenticatedCopyWithImpl(
      _Authenticated _value, $Res Function(_Authenticated) _then)
      : super(_value, (v) => _then(v as _Authenticated));

  @override
  _Authenticated get _value => super._value as _Authenticated;

  @override
  $Res call({
    Object employee = freezed,
  }) {
    return _then(_Authenticated(
      employee == freezed ? _value.employee : employee as Employee,
    ));
  }
}

/// @nodoc
class _$_Authenticated implements _Authenticated {
  const _$_Authenticated(this.employee) : assert(employee != null);

  @override
  final Employee employee;

  @override
  String toString() {
    return 'EmployeeAuthState.authenticated(employee: $employee)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Authenticated &&
            (identical(other.employee, employee) ||
                const DeepCollectionEquality()
                    .equals(other.employee, employee)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(employee);

  @JsonKey(ignore: true)
  @override
  _$AuthenticatedCopyWith<_Authenticated> get copyWith =>
      __$AuthenticatedCopyWithImpl<_Authenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult authenticated(Employee employee),
    @required TResult unauthenticated(),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return authenticated(employee);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult authenticated(Employee employee),
    TResult unauthenticated(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated(employee);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult authenticated(_Authenticated value),
    @required TResult unauthenticated(_Unauthenticated value),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult authenticated(_Authenticated value),
    TResult unauthenticated(_Unauthenticated value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticated implements EmployeeAuthState {
  const factory _Authenticated(Employee employee) = _$_Authenticated;

  Employee get employee;
  @JsonKey(ignore: true)
  _$AuthenticatedCopyWith<_Authenticated> get copyWith;
}

/// @nodoc
abstract class _$UnauthenticatedCopyWith<$Res> {
  factory _$UnauthenticatedCopyWith(
          _Unauthenticated value, $Res Function(_Unauthenticated) then) =
      __$UnauthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnauthenticatedCopyWithImpl<$Res>
    extends _$EmployeeAuthStateCopyWithImpl<$Res>
    implements _$UnauthenticatedCopyWith<$Res> {
  __$UnauthenticatedCopyWithImpl(
      _Unauthenticated _value, $Res Function(_Unauthenticated) _then)
      : super(_value, (v) => _then(v as _Unauthenticated));

  @override
  _Unauthenticated get _value => super._value as _Unauthenticated;
}

/// @nodoc
class _$_Unauthenticated implements _Unauthenticated {
  const _$_Unauthenticated();

  @override
  String toString() {
    return 'EmployeeAuthState.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Unauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult authenticated(Employee employee),
    @required TResult unauthenticated(),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult authenticated(Employee employee),
    TResult unauthenticated(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult authenticated(_Authenticated value),
    @required TResult unauthenticated(_Unauthenticated value),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult authenticated(_Authenticated value),
    TResult unauthenticated(_Unauthenticated value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class _Unauthenticated implements EmployeeAuthState {
  const factory _Unauthenticated() = _$_Unauthenticated;
}
