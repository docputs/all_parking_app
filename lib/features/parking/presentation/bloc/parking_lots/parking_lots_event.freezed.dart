// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'parking_lots_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ParkingLotsEventTearOff {
  const _$ParkingLotsEventTearOff();

// ignore: unused_element
  _FetchRequested fetchRequested() {
    return const _FetchRequested();
  }
}

/// @nodoc
// ignore: unused_element
const $ParkingLotsEvent = _$ParkingLotsEventTearOff();

/// @nodoc
mixin _$ParkingLotsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult fetchRequested(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult fetchRequested(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult fetchRequested(_FetchRequested value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult fetchRequested(_FetchRequested value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ParkingLotsEventCopyWith<$Res> {
  factory $ParkingLotsEventCopyWith(
          ParkingLotsEvent value, $Res Function(ParkingLotsEvent) then) =
      _$ParkingLotsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ParkingLotsEventCopyWithImpl<$Res>
    implements $ParkingLotsEventCopyWith<$Res> {
  _$ParkingLotsEventCopyWithImpl(this._value, this._then);

  final ParkingLotsEvent _value;
  // ignore: unused_field
  final $Res Function(ParkingLotsEvent) _then;
}

/// @nodoc
abstract class _$FetchRequestedCopyWith<$Res> {
  factory _$FetchRequestedCopyWith(
          _FetchRequested value, $Res Function(_FetchRequested) then) =
      __$FetchRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$FetchRequestedCopyWithImpl<$Res>
    extends _$ParkingLotsEventCopyWithImpl<$Res>
    implements _$FetchRequestedCopyWith<$Res> {
  __$FetchRequestedCopyWithImpl(
      _FetchRequested _value, $Res Function(_FetchRequested) _then)
      : super(_value, (v) => _then(v as _FetchRequested));

  @override
  _FetchRequested get _value => super._value as _FetchRequested;
}

/// @nodoc
class _$_FetchRequested implements _FetchRequested {
  const _$_FetchRequested();

  @override
  String toString() {
    return 'ParkingLotsEvent.fetchRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FetchRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult fetchRequested(),
  }) {
    assert(fetchRequested != null);
    return fetchRequested();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult fetchRequested(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fetchRequested != null) {
      return fetchRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult fetchRequested(_FetchRequested value),
  }) {
    assert(fetchRequested != null);
    return fetchRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult fetchRequested(_FetchRequested value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fetchRequested != null) {
      return fetchRequested(this);
    }
    return orElse();
  }
}

abstract class _FetchRequested implements ParkingLotsEvent {
  const factory _FetchRequested() = _$_FetchRequested;
}
