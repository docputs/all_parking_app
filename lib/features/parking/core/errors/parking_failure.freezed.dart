// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'parking_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ParkingFailureTearOff {
  const _$ParkingFailureTearOff();

// ignore: unused_element
  _InvalidAvailableSpots invalidAvailableSpots(String message) {
    return _InvalidAvailableSpots(
      message,
    );
  }

// ignore: unused_element
  _InvalidPricePerHour invalidPricePerHour(String message) {
    return _InvalidPricePerHour(
      message,
    );
  }

// ignore: unused_element
  _InvalidParkingLotTitle invalidParkingLotTitle(String message) {
    return _InvalidParkingLotTitle(
      message,
    );
  }

// ignore: unused_element
  _InvalidCep invalidCep(String message) {
    return _InvalidCep(
      message,
    );
  }

// ignore: unused_element
  _ServerFailure serverFailure(String message) {
    return _ServerFailure(
      message,
    );
  }

// ignore: unused_element
  _UnknownFailure unknownFailure(String message) {
    return _UnknownFailure(
      message,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ParkingFailure = _$ParkingFailureTearOff();

/// @nodoc
mixin _$ParkingFailure {
  String get message;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidAvailableSpots(String message),
    @required TResult invalidPricePerHour(String message),
    @required TResult invalidParkingLotTitle(String message),
    @required TResult invalidCep(String message),
    @required TResult serverFailure(String message),
    @required TResult unknownFailure(String message),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidAvailableSpots(String message),
    TResult invalidPricePerHour(String message),
    TResult invalidParkingLotTitle(String message),
    TResult invalidCep(String message),
    TResult serverFailure(String message),
    TResult unknownFailure(String message),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidAvailableSpots(_InvalidAvailableSpots value),
    @required TResult invalidPricePerHour(_InvalidPricePerHour value),
    @required TResult invalidParkingLotTitle(_InvalidParkingLotTitle value),
    @required TResult invalidCep(_InvalidCep value),
    @required TResult serverFailure(_ServerFailure value),
    @required TResult unknownFailure(_UnknownFailure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidAvailableSpots(_InvalidAvailableSpots value),
    TResult invalidPricePerHour(_InvalidPricePerHour value),
    TResult invalidParkingLotTitle(_InvalidParkingLotTitle value),
    TResult invalidCep(_InvalidCep value),
    TResult serverFailure(_ServerFailure value),
    TResult unknownFailure(_UnknownFailure value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $ParkingFailureCopyWith<ParkingFailure> get copyWith;
}

/// @nodoc
abstract class $ParkingFailureCopyWith<$Res> {
  factory $ParkingFailureCopyWith(
          ParkingFailure value, $Res Function(ParkingFailure) then) =
      _$ParkingFailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ParkingFailureCopyWithImpl<$Res>
    implements $ParkingFailureCopyWith<$Res> {
  _$ParkingFailureCopyWithImpl(this._value, this._then);

  final ParkingFailure _value;
  // ignore: unused_field
  final $Res Function(ParkingFailure) _then;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
abstract class _$InvalidAvailableSpotsCopyWith<$Res>
    implements $ParkingFailureCopyWith<$Res> {
  factory _$InvalidAvailableSpotsCopyWith(_InvalidAvailableSpots value,
          $Res Function(_InvalidAvailableSpots) then) =
      __$InvalidAvailableSpotsCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$InvalidAvailableSpotsCopyWithImpl<$Res>
    extends _$ParkingFailureCopyWithImpl<$Res>
    implements _$InvalidAvailableSpotsCopyWith<$Res> {
  __$InvalidAvailableSpotsCopyWithImpl(_InvalidAvailableSpots _value,
      $Res Function(_InvalidAvailableSpots) _then)
      : super(_value, (v) => _then(v as _InvalidAvailableSpots));

  @override
  _InvalidAvailableSpots get _value => super._value as _InvalidAvailableSpots;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_InvalidAvailableSpots(
      message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$_InvalidAvailableSpots implements _InvalidAvailableSpots {
  const _$_InvalidAvailableSpots(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'ParkingFailure.invalidAvailableSpots(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvalidAvailableSpots &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$InvalidAvailableSpotsCopyWith<_InvalidAvailableSpots> get copyWith =>
      __$InvalidAvailableSpotsCopyWithImpl<_InvalidAvailableSpots>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidAvailableSpots(String message),
    @required TResult invalidPricePerHour(String message),
    @required TResult invalidParkingLotTitle(String message),
    @required TResult invalidCep(String message),
    @required TResult serverFailure(String message),
    @required TResult unknownFailure(String message),
  }) {
    assert(invalidAvailableSpots != null);
    assert(invalidPricePerHour != null);
    assert(invalidParkingLotTitle != null);
    assert(invalidCep != null);
    assert(serverFailure != null);
    assert(unknownFailure != null);
    return invalidAvailableSpots(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidAvailableSpots(String message),
    TResult invalidPricePerHour(String message),
    TResult invalidParkingLotTitle(String message),
    TResult invalidCep(String message),
    TResult serverFailure(String message),
    TResult unknownFailure(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidAvailableSpots != null) {
      return invalidAvailableSpots(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidAvailableSpots(_InvalidAvailableSpots value),
    @required TResult invalidPricePerHour(_InvalidPricePerHour value),
    @required TResult invalidParkingLotTitle(_InvalidParkingLotTitle value),
    @required TResult invalidCep(_InvalidCep value),
    @required TResult serverFailure(_ServerFailure value),
    @required TResult unknownFailure(_UnknownFailure value),
  }) {
    assert(invalidAvailableSpots != null);
    assert(invalidPricePerHour != null);
    assert(invalidParkingLotTitle != null);
    assert(invalidCep != null);
    assert(serverFailure != null);
    assert(unknownFailure != null);
    return invalidAvailableSpots(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidAvailableSpots(_InvalidAvailableSpots value),
    TResult invalidPricePerHour(_InvalidPricePerHour value),
    TResult invalidParkingLotTitle(_InvalidParkingLotTitle value),
    TResult invalidCep(_InvalidCep value),
    TResult serverFailure(_ServerFailure value),
    TResult unknownFailure(_UnknownFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidAvailableSpots != null) {
      return invalidAvailableSpots(this);
    }
    return orElse();
  }
}

abstract class _InvalidAvailableSpots implements ParkingFailure {
  const factory _InvalidAvailableSpots(String message) =
      _$_InvalidAvailableSpots;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$InvalidAvailableSpotsCopyWith<_InvalidAvailableSpots> get copyWith;
}

/// @nodoc
abstract class _$InvalidPricePerHourCopyWith<$Res>
    implements $ParkingFailureCopyWith<$Res> {
  factory _$InvalidPricePerHourCopyWith(_InvalidPricePerHour value,
          $Res Function(_InvalidPricePerHour) then) =
      __$InvalidPricePerHourCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$InvalidPricePerHourCopyWithImpl<$Res>
    extends _$ParkingFailureCopyWithImpl<$Res>
    implements _$InvalidPricePerHourCopyWith<$Res> {
  __$InvalidPricePerHourCopyWithImpl(
      _InvalidPricePerHour _value, $Res Function(_InvalidPricePerHour) _then)
      : super(_value, (v) => _then(v as _InvalidPricePerHour));

  @override
  _InvalidPricePerHour get _value => super._value as _InvalidPricePerHour;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_InvalidPricePerHour(
      message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$_InvalidPricePerHour implements _InvalidPricePerHour {
  const _$_InvalidPricePerHour(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'ParkingFailure.invalidPricePerHour(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvalidPricePerHour &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$InvalidPricePerHourCopyWith<_InvalidPricePerHour> get copyWith =>
      __$InvalidPricePerHourCopyWithImpl<_InvalidPricePerHour>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidAvailableSpots(String message),
    @required TResult invalidPricePerHour(String message),
    @required TResult invalidParkingLotTitle(String message),
    @required TResult invalidCep(String message),
    @required TResult serverFailure(String message),
    @required TResult unknownFailure(String message),
  }) {
    assert(invalidAvailableSpots != null);
    assert(invalidPricePerHour != null);
    assert(invalidParkingLotTitle != null);
    assert(invalidCep != null);
    assert(serverFailure != null);
    assert(unknownFailure != null);
    return invalidPricePerHour(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidAvailableSpots(String message),
    TResult invalidPricePerHour(String message),
    TResult invalidParkingLotTitle(String message),
    TResult invalidCep(String message),
    TResult serverFailure(String message),
    TResult unknownFailure(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidPricePerHour != null) {
      return invalidPricePerHour(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidAvailableSpots(_InvalidAvailableSpots value),
    @required TResult invalidPricePerHour(_InvalidPricePerHour value),
    @required TResult invalidParkingLotTitle(_InvalidParkingLotTitle value),
    @required TResult invalidCep(_InvalidCep value),
    @required TResult serverFailure(_ServerFailure value),
    @required TResult unknownFailure(_UnknownFailure value),
  }) {
    assert(invalidAvailableSpots != null);
    assert(invalidPricePerHour != null);
    assert(invalidParkingLotTitle != null);
    assert(invalidCep != null);
    assert(serverFailure != null);
    assert(unknownFailure != null);
    return invalidPricePerHour(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidAvailableSpots(_InvalidAvailableSpots value),
    TResult invalidPricePerHour(_InvalidPricePerHour value),
    TResult invalidParkingLotTitle(_InvalidParkingLotTitle value),
    TResult invalidCep(_InvalidCep value),
    TResult serverFailure(_ServerFailure value),
    TResult unknownFailure(_UnknownFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidPricePerHour != null) {
      return invalidPricePerHour(this);
    }
    return orElse();
  }
}

abstract class _InvalidPricePerHour implements ParkingFailure {
  const factory _InvalidPricePerHour(String message) = _$_InvalidPricePerHour;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$InvalidPricePerHourCopyWith<_InvalidPricePerHour> get copyWith;
}

/// @nodoc
abstract class _$InvalidParkingLotTitleCopyWith<$Res>
    implements $ParkingFailureCopyWith<$Res> {
  factory _$InvalidParkingLotTitleCopyWith(_InvalidParkingLotTitle value,
          $Res Function(_InvalidParkingLotTitle) then) =
      __$InvalidParkingLotTitleCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$InvalidParkingLotTitleCopyWithImpl<$Res>
    extends _$ParkingFailureCopyWithImpl<$Res>
    implements _$InvalidParkingLotTitleCopyWith<$Res> {
  __$InvalidParkingLotTitleCopyWithImpl(_InvalidParkingLotTitle _value,
      $Res Function(_InvalidParkingLotTitle) _then)
      : super(_value, (v) => _then(v as _InvalidParkingLotTitle));

  @override
  _InvalidParkingLotTitle get _value => super._value as _InvalidParkingLotTitle;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_InvalidParkingLotTitle(
      message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$_InvalidParkingLotTitle implements _InvalidParkingLotTitle {
  const _$_InvalidParkingLotTitle(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'ParkingFailure.invalidParkingLotTitle(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvalidParkingLotTitle &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$InvalidParkingLotTitleCopyWith<_InvalidParkingLotTitle> get copyWith =>
      __$InvalidParkingLotTitleCopyWithImpl<_InvalidParkingLotTitle>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidAvailableSpots(String message),
    @required TResult invalidPricePerHour(String message),
    @required TResult invalidParkingLotTitle(String message),
    @required TResult invalidCep(String message),
    @required TResult serverFailure(String message),
    @required TResult unknownFailure(String message),
  }) {
    assert(invalidAvailableSpots != null);
    assert(invalidPricePerHour != null);
    assert(invalidParkingLotTitle != null);
    assert(invalidCep != null);
    assert(serverFailure != null);
    assert(unknownFailure != null);
    return invalidParkingLotTitle(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidAvailableSpots(String message),
    TResult invalidPricePerHour(String message),
    TResult invalidParkingLotTitle(String message),
    TResult invalidCep(String message),
    TResult serverFailure(String message),
    TResult unknownFailure(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidParkingLotTitle != null) {
      return invalidParkingLotTitle(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidAvailableSpots(_InvalidAvailableSpots value),
    @required TResult invalidPricePerHour(_InvalidPricePerHour value),
    @required TResult invalidParkingLotTitle(_InvalidParkingLotTitle value),
    @required TResult invalidCep(_InvalidCep value),
    @required TResult serverFailure(_ServerFailure value),
    @required TResult unknownFailure(_UnknownFailure value),
  }) {
    assert(invalidAvailableSpots != null);
    assert(invalidPricePerHour != null);
    assert(invalidParkingLotTitle != null);
    assert(invalidCep != null);
    assert(serverFailure != null);
    assert(unknownFailure != null);
    return invalidParkingLotTitle(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidAvailableSpots(_InvalidAvailableSpots value),
    TResult invalidPricePerHour(_InvalidPricePerHour value),
    TResult invalidParkingLotTitle(_InvalidParkingLotTitle value),
    TResult invalidCep(_InvalidCep value),
    TResult serverFailure(_ServerFailure value),
    TResult unknownFailure(_UnknownFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidParkingLotTitle != null) {
      return invalidParkingLotTitle(this);
    }
    return orElse();
  }
}

abstract class _InvalidParkingLotTitle implements ParkingFailure {
  const factory _InvalidParkingLotTitle(String message) =
      _$_InvalidParkingLotTitle;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$InvalidParkingLotTitleCopyWith<_InvalidParkingLotTitle> get copyWith;
}

/// @nodoc
abstract class _$InvalidCepCopyWith<$Res>
    implements $ParkingFailureCopyWith<$Res> {
  factory _$InvalidCepCopyWith(
          _InvalidCep value, $Res Function(_InvalidCep) then) =
      __$InvalidCepCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$InvalidCepCopyWithImpl<$Res> extends _$ParkingFailureCopyWithImpl<$Res>
    implements _$InvalidCepCopyWith<$Res> {
  __$InvalidCepCopyWithImpl(
      _InvalidCep _value, $Res Function(_InvalidCep) _then)
      : super(_value, (v) => _then(v as _InvalidCep));

  @override
  _InvalidCep get _value => super._value as _InvalidCep;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_InvalidCep(
      message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$_InvalidCep implements _InvalidCep {
  const _$_InvalidCep(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'ParkingFailure.invalidCep(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvalidCep &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$InvalidCepCopyWith<_InvalidCep> get copyWith =>
      __$InvalidCepCopyWithImpl<_InvalidCep>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidAvailableSpots(String message),
    @required TResult invalidPricePerHour(String message),
    @required TResult invalidParkingLotTitle(String message),
    @required TResult invalidCep(String message),
    @required TResult serverFailure(String message),
    @required TResult unknownFailure(String message),
  }) {
    assert(invalidAvailableSpots != null);
    assert(invalidPricePerHour != null);
    assert(invalidParkingLotTitle != null);
    assert(invalidCep != null);
    assert(serverFailure != null);
    assert(unknownFailure != null);
    return invalidCep(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidAvailableSpots(String message),
    TResult invalidPricePerHour(String message),
    TResult invalidParkingLotTitle(String message),
    TResult invalidCep(String message),
    TResult serverFailure(String message),
    TResult unknownFailure(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidCep != null) {
      return invalidCep(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidAvailableSpots(_InvalidAvailableSpots value),
    @required TResult invalidPricePerHour(_InvalidPricePerHour value),
    @required TResult invalidParkingLotTitle(_InvalidParkingLotTitle value),
    @required TResult invalidCep(_InvalidCep value),
    @required TResult serverFailure(_ServerFailure value),
    @required TResult unknownFailure(_UnknownFailure value),
  }) {
    assert(invalidAvailableSpots != null);
    assert(invalidPricePerHour != null);
    assert(invalidParkingLotTitle != null);
    assert(invalidCep != null);
    assert(serverFailure != null);
    assert(unknownFailure != null);
    return invalidCep(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidAvailableSpots(_InvalidAvailableSpots value),
    TResult invalidPricePerHour(_InvalidPricePerHour value),
    TResult invalidParkingLotTitle(_InvalidParkingLotTitle value),
    TResult invalidCep(_InvalidCep value),
    TResult serverFailure(_ServerFailure value),
    TResult unknownFailure(_UnknownFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidCep != null) {
      return invalidCep(this);
    }
    return orElse();
  }
}

abstract class _InvalidCep implements ParkingFailure {
  const factory _InvalidCep(String message) = _$_InvalidCep;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$InvalidCepCopyWith<_InvalidCep> get copyWith;
}

/// @nodoc
abstract class _$ServerFailureCopyWith<$Res>
    implements $ParkingFailureCopyWith<$Res> {
  factory _$ServerFailureCopyWith(
          _ServerFailure value, $Res Function(_ServerFailure) then) =
      __$ServerFailureCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$ServerFailureCopyWithImpl<$Res>
    extends _$ParkingFailureCopyWithImpl<$Res>
    implements _$ServerFailureCopyWith<$Res> {
  __$ServerFailureCopyWithImpl(
      _ServerFailure _value, $Res Function(_ServerFailure) _then)
      : super(_value, (v) => _then(v as _ServerFailure));

  @override
  _ServerFailure get _value => super._value as _ServerFailure;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_ServerFailure(
      message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$_ServerFailure implements _ServerFailure {
  const _$_ServerFailure(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'ParkingFailure.serverFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ServerFailure &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$ServerFailureCopyWith<_ServerFailure> get copyWith =>
      __$ServerFailureCopyWithImpl<_ServerFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidAvailableSpots(String message),
    @required TResult invalidPricePerHour(String message),
    @required TResult invalidParkingLotTitle(String message),
    @required TResult invalidCep(String message),
    @required TResult serverFailure(String message),
    @required TResult unknownFailure(String message),
  }) {
    assert(invalidAvailableSpots != null);
    assert(invalidPricePerHour != null);
    assert(invalidParkingLotTitle != null);
    assert(invalidCep != null);
    assert(serverFailure != null);
    assert(unknownFailure != null);
    return serverFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidAvailableSpots(String message),
    TResult invalidPricePerHour(String message),
    TResult invalidParkingLotTitle(String message),
    TResult invalidCep(String message),
    TResult serverFailure(String message),
    TResult unknownFailure(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (serverFailure != null) {
      return serverFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidAvailableSpots(_InvalidAvailableSpots value),
    @required TResult invalidPricePerHour(_InvalidPricePerHour value),
    @required TResult invalidParkingLotTitle(_InvalidParkingLotTitle value),
    @required TResult invalidCep(_InvalidCep value),
    @required TResult serverFailure(_ServerFailure value),
    @required TResult unknownFailure(_UnknownFailure value),
  }) {
    assert(invalidAvailableSpots != null);
    assert(invalidPricePerHour != null);
    assert(invalidParkingLotTitle != null);
    assert(invalidCep != null);
    assert(serverFailure != null);
    assert(unknownFailure != null);
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidAvailableSpots(_InvalidAvailableSpots value),
    TResult invalidPricePerHour(_InvalidPricePerHour value),
    TResult invalidParkingLotTitle(_InvalidParkingLotTitle value),
    TResult invalidCep(_InvalidCep value),
    TResult serverFailure(_ServerFailure value),
    TResult unknownFailure(_UnknownFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class _ServerFailure implements ParkingFailure {
  const factory _ServerFailure(String message) = _$_ServerFailure;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$ServerFailureCopyWith<_ServerFailure> get copyWith;
}

/// @nodoc
abstract class _$UnknownFailureCopyWith<$Res>
    implements $ParkingFailureCopyWith<$Res> {
  factory _$UnknownFailureCopyWith(
          _UnknownFailure value, $Res Function(_UnknownFailure) then) =
      __$UnknownFailureCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$UnknownFailureCopyWithImpl<$Res>
    extends _$ParkingFailureCopyWithImpl<$Res>
    implements _$UnknownFailureCopyWith<$Res> {
  __$UnknownFailureCopyWithImpl(
      _UnknownFailure _value, $Res Function(_UnknownFailure) _then)
      : super(_value, (v) => _then(v as _UnknownFailure));

  @override
  _UnknownFailure get _value => super._value as _UnknownFailure;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_UnknownFailure(
      message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$_UnknownFailure implements _UnknownFailure {
  const _$_UnknownFailure(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'ParkingFailure.unknownFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UnknownFailure &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$UnknownFailureCopyWith<_UnknownFailure> get copyWith =>
      __$UnknownFailureCopyWithImpl<_UnknownFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidAvailableSpots(String message),
    @required TResult invalidPricePerHour(String message),
    @required TResult invalidParkingLotTitle(String message),
    @required TResult invalidCep(String message),
    @required TResult serverFailure(String message),
    @required TResult unknownFailure(String message),
  }) {
    assert(invalidAvailableSpots != null);
    assert(invalidPricePerHour != null);
    assert(invalidParkingLotTitle != null);
    assert(invalidCep != null);
    assert(serverFailure != null);
    assert(unknownFailure != null);
    return unknownFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidAvailableSpots(String message),
    TResult invalidPricePerHour(String message),
    TResult invalidParkingLotTitle(String message),
    TResult invalidCep(String message),
    TResult serverFailure(String message),
    TResult unknownFailure(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unknownFailure != null) {
      return unknownFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidAvailableSpots(_InvalidAvailableSpots value),
    @required TResult invalidPricePerHour(_InvalidPricePerHour value),
    @required TResult invalidParkingLotTitle(_InvalidParkingLotTitle value),
    @required TResult invalidCep(_InvalidCep value),
    @required TResult serverFailure(_ServerFailure value),
    @required TResult unknownFailure(_UnknownFailure value),
  }) {
    assert(invalidAvailableSpots != null);
    assert(invalidPricePerHour != null);
    assert(invalidParkingLotTitle != null);
    assert(invalidCep != null);
    assert(serverFailure != null);
    assert(unknownFailure != null);
    return unknownFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidAvailableSpots(_InvalidAvailableSpots value),
    TResult invalidPricePerHour(_InvalidPricePerHour value),
    TResult invalidParkingLotTitle(_InvalidParkingLotTitle value),
    TResult invalidCep(_InvalidCep value),
    TResult serverFailure(_ServerFailure value),
    TResult unknownFailure(_UnknownFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unknownFailure != null) {
      return unknownFailure(this);
    }
    return orElse();
  }
}

abstract class _UnknownFailure implements ParkingFailure {
  const factory _UnknownFailure(String message) = _$_UnknownFailure;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$UnknownFailureCopyWith<_UnknownFailure> get copyWith;
}
