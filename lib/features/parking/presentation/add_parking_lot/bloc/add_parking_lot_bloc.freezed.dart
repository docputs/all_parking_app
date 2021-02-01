// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'add_parking_lot_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AddParkingLotEventTearOff {
  const _$AddParkingLotEventTearOff();

// ignore: unused_element
  _Started started(Option<ParkingLot> initialParkingLotOption) {
    return _Started(
      initialParkingLotOption,
    );
  }

// ignore: unused_element
  _ChangedTitle changedTitle(String input) {
    return _ChangedTitle(
      input,
    );
  }

// ignore: unused_element
  _ChangedCep changedCep(String input) {
    return _ChangedCep(
      input,
    );
  }

// ignore: unused_element
  _ChangedAvailableSpots changedAvailableSpots(String input) {
    return _ChangedAvailableSpots(
      input,
    );
  }

// ignore: unused_element
  _ChangedPricePerHour changedPricePerHour(String input) {
    return _ChangedPricePerHour(
      input,
    );
  }

// ignore: unused_element
  _ParkingLotSubmitted parkingLotSubmitted() {
    return const _ParkingLotSubmitted();
  }
}

/// @nodoc
// ignore: unused_element
const $AddParkingLotEvent = _$AddParkingLotEventTearOff();

/// @nodoc
mixin _$AddParkingLotEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(Option<ParkingLot> initialParkingLotOption),
    @required TResult changedTitle(String input),
    @required TResult changedCep(String input),
    @required TResult changedAvailableSpots(String input),
    @required TResult changedPricePerHour(String input),
    @required TResult parkingLotSubmitted(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(Option<ParkingLot> initialParkingLotOption),
    TResult changedTitle(String input),
    TResult changedCep(String input),
    TResult changedAvailableSpots(String input),
    TResult changedPricePerHour(String input),
    TResult parkingLotSubmitted(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult changedTitle(_ChangedTitle value),
    @required TResult changedCep(_ChangedCep value),
    @required TResult changedAvailableSpots(_ChangedAvailableSpots value),
    @required TResult changedPricePerHour(_ChangedPricePerHour value),
    @required TResult parkingLotSubmitted(_ParkingLotSubmitted value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult changedTitle(_ChangedTitle value),
    TResult changedCep(_ChangedCep value),
    TResult changedAvailableSpots(_ChangedAvailableSpots value),
    TResult changedPricePerHour(_ChangedPricePerHour value),
    TResult parkingLotSubmitted(_ParkingLotSubmitted value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AddParkingLotEventCopyWith<$Res> {
  factory $AddParkingLotEventCopyWith(
          AddParkingLotEvent value, $Res Function(AddParkingLotEvent) then) =
      _$AddParkingLotEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddParkingLotEventCopyWithImpl<$Res>
    implements $AddParkingLotEventCopyWith<$Res> {
  _$AddParkingLotEventCopyWithImpl(this._value, this._then);

  final AddParkingLotEvent _value;
  // ignore: unused_field
  final $Res Function(AddParkingLotEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
  $Res call({Option<ParkingLot> initialParkingLotOption});
}

/// @nodoc
class __$StartedCopyWithImpl<$Res>
    extends _$AddParkingLotEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;

  @override
  $Res call({
    Object initialParkingLotOption = freezed,
  }) {
    return _then(_Started(
      initialParkingLotOption == freezed
          ? _value.initialParkingLotOption
          : initialParkingLotOption as Option<ParkingLot>,
    ));
  }
}

/// @nodoc
class _$_Started implements _Started {
  const _$_Started(this.initialParkingLotOption)
      : assert(initialParkingLotOption != null);

  @override
  final Option<ParkingLot> initialParkingLotOption;

  @override
  String toString() {
    return 'AddParkingLotEvent.started(initialParkingLotOption: $initialParkingLotOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Started &&
            (identical(
                    other.initialParkingLotOption, initialParkingLotOption) ||
                const DeepCollectionEquality().equals(
                    other.initialParkingLotOption, initialParkingLotOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(initialParkingLotOption);

  @JsonKey(ignore: true)
  @override
  _$StartedCopyWith<_Started> get copyWith =>
      __$StartedCopyWithImpl<_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(Option<ParkingLot> initialParkingLotOption),
    @required TResult changedTitle(String input),
    @required TResult changedCep(String input),
    @required TResult changedAvailableSpots(String input),
    @required TResult changedPricePerHour(String input),
    @required TResult parkingLotSubmitted(),
  }) {
    assert(started != null);
    assert(changedTitle != null);
    assert(changedCep != null);
    assert(changedAvailableSpots != null);
    assert(changedPricePerHour != null);
    assert(parkingLotSubmitted != null);
    return started(initialParkingLotOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(Option<ParkingLot> initialParkingLotOption),
    TResult changedTitle(String input),
    TResult changedCep(String input),
    TResult changedAvailableSpots(String input),
    TResult changedPricePerHour(String input),
    TResult parkingLotSubmitted(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started(initialParkingLotOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult changedTitle(_ChangedTitle value),
    @required TResult changedCep(_ChangedCep value),
    @required TResult changedAvailableSpots(_ChangedAvailableSpots value),
    @required TResult changedPricePerHour(_ChangedPricePerHour value),
    @required TResult parkingLotSubmitted(_ParkingLotSubmitted value),
  }) {
    assert(started != null);
    assert(changedTitle != null);
    assert(changedCep != null);
    assert(changedAvailableSpots != null);
    assert(changedPricePerHour != null);
    assert(parkingLotSubmitted != null);
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult changedTitle(_ChangedTitle value),
    TResult changedCep(_ChangedCep value),
    TResult changedAvailableSpots(_ChangedAvailableSpots value),
    TResult changedPricePerHour(_ChangedPricePerHour value),
    TResult parkingLotSubmitted(_ParkingLotSubmitted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AddParkingLotEvent {
  const factory _Started(Option<ParkingLot> initialParkingLotOption) =
      _$_Started;

  Option<ParkingLot> get initialParkingLotOption;
  @JsonKey(ignore: true)
  _$StartedCopyWith<_Started> get copyWith;
}

/// @nodoc
abstract class _$ChangedTitleCopyWith<$Res> {
  factory _$ChangedTitleCopyWith(
          _ChangedTitle value, $Res Function(_ChangedTitle) then) =
      __$ChangedTitleCopyWithImpl<$Res>;
  $Res call({String input});
}

/// @nodoc
class __$ChangedTitleCopyWithImpl<$Res>
    extends _$AddParkingLotEventCopyWithImpl<$Res>
    implements _$ChangedTitleCopyWith<$Res> {
  __$ChangedTitleCopyWithImpl(
      _ChangedTitle _value, $Res Function(_ChangedTitle) _then)
      : super(_value, (v) => _then(v as _ChangedTitle));

  @override
  _ChangedTitle get _value => super._value as _ChangedTitle;

  @override
  $Res call({
    Object input = freezed,
  }) {
    return _then(_ChangedTitle(
      input == freezed ? _value.input : input as String,
    ));
  }
}

/// @nodoc
class _$_ChangedTitle implements _ChangedTitle {
  const _$_ChangedTitle(this.input) : assert(input != null);

  @override
  final String input;

  @override
  String toString() {
    return 'AddParkingLotEvent.changedTitle(input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangedTitle &&
            (identical(other.input, input) ||
                const DeepCollectionEquality().equals(other.input, input)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(input);

  @JsonKey(ignore: true)
  @override
  _$ChangedTitleCopyWith<_ChangedTitle> get copyWith =>
      __$ChangedTitleCopyWithImpl<_ChangedTitle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(Option<ParkingLot> initialParkingLotOption),
    @required TResult changedTitle(String input),
    @required TResult changedCep(String input),
    @required TResult changedAvailableSpots(String input),
    @required TResult changedPricePerHour(String input),
    @required TResult parkingLotSubmitted(),
  }) {
    assert(started != null);
    assert(changedTitle != null);
    assert(changedCep != null);
    assert(changedAvailableSpots != null);
    assert(changedPricePerHour != null);
    assert(parkingLotSubmitted != null);
    return changedTitle(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(Option<ParkingLot> initialParkingLotOption),
    TResult changedTitle(String input),
    TResult changedCep(String input),
    TResult changedAvailableSpots(String input),
    TResult changedPricePerHour(String input),
    TResult parkingLotSubmitted(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedTitle != null) {
      return changedTitle(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult changedTitle(_ChangedTitle value),
    @required TResult changedCep(_ChangedCep value),
    @required TResult changedAvailableSpots(_ChangedAvailableSpots value),
    @required TResult changedPricePerHour(_ChangedPricePerHour value),
    @required TResult parkingLotSubmitted(_ParkingLotSubmitted value),
  }) {
    assert(started != null);
    assert(changedTitle != null);
    assert(changedCep != null);
    assert(changedAvailableSpots != null);
    assert(changedPricePerHour != null);
    assert(parkingLotSubmitted != null);
    return changedTitle(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult changedTitle(_ChangedTitle value),
    TResult changedCep(_ChangedCep value),
    TResult changedAvailableSpots(_ChangedAvailableSpots value),
    TResult changedPricePerHour(_ChangedPricePerHour value),
    TResult parkingLotSubmitted(_ParkingLotSubmitted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedTitle != null) {
      return changedTitle(this);
    }
    return orElse();
  }
}

abstract class _ChangedTitle implements AddParkingLotEvent {
  const factory _ChangedTitle(String input) = _$_ChangedTitle;

  String get input;
  @JsonKey(ignore: true)
  _$ChangedTitleCopyWith<_ChangedTitle> get copyWith;
}

/// @nodoc
abstract class _$ChangedCepCopyWith<$Res> {
  factory _$ChangedCepCopyWith(
          _ChangedCep value, $Res Function(_ChangedCep) then) =
      __$ChangedCepCopyWithImpl<$Res>;
  $Res call({String input});
}

/// @nodoc
class __$ChangedCepCopyWithImpl<$Res>
    extends _$AddParkingLotEventCopyWithImpl<$Res>
    implements _$ChangedCepCopyWith<$Res> {
  __$ChangedCepCopyWithImpl(
      _ChangedCep _value, $Res Function(_ChangedCep) _then)
      : super(_value, (v) => _then(v as _ChangedCep));

  @override
  _ChangedCep get _value => super._value as _ChangedCep;

  @override
  $Res call({
    Object input = freezed,
  }) {
    return _then(_ChangedCep(
      input == freezed ? _value.input : input as String,
    ));
  }
}

/// @nodoc
class _$_ChangedCep implements _ChangedCep {
  const _$_ChangedCep(this.input) : assert(input != null);

  @override
  final String input;

  @override
  String toString() {
    return 'AddParkingLotEvent.changedCep(input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangedCep &&
            (identical(other.input, input) ||
                const DeepCollectionEquality().equals(other.input, input)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(input);

  @JsonKey(ignore: true)
  @override
  _$ChangedCepCopyWith<_ChangedCep> get copyWith =>
      __$ChangedCepCopyWithImpl<_ChangedCep>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(Option<ParkingLot> initialParkingLotOption),
    @required TResult changedTitle(String input),
    @required TResult changedCep(String input),
    @required TResult changedAvailableSpots(String input),
    @required TResult changedPricePerHour(String input),
    @required TResult parkingLotSubmitted(),
  }) {
    assert(started != null);
    assert(changedTitle != null);
    assert(changedCep != null);
    assert(changedAvailableSpots != null);
    assert(changedPricePerHour != null);
    assert(parkingLotSubmitted != null);
    return changedCep(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(Option<ParkingLot> initialParkingLotOption),
    TResult changedTitle(String input),
    TResult changedCep(String input),
    TResult changedAvailableSpots(String input),
    TResult changedPricePerHour(String input),
    TResult parkingLotSubmitted(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedCep != null) {
      return changedCep(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult changedTitle(_ChangedTitle value),
    @required TResult changedCep(_ChangedCep value),
    @required TResult changedAvailableSpots(_ChangedAvailableSpots value),
    @required TResult changedPricePerHour(_ChangedPricePerHour value),
    @required TResult parkingLotSubmitted(_ParkingLotSubmitted value),
  }) {
    assert(started != null);
    assert(changedTitle != null);
    assert(changedCep != null);
    assert(changedAvailableSpots != null);
    assert(changedPricePerHour != null);
    assert(parkingLotSubmitted != null);
    return changedCep(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult changedTitle(_ChangedTitle value),
    TResult changedCep(_ChangedCep value),
    TResult changedAvailableSpots(_ChangedAvailableSpots value),
    TResult changedPricePerHour(_ChangedPricePerHour value),
    TResult parkingLotSubmitted(_ParkingLotSubmitted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedCep != null) {
      return changedCep(this);
    }
    return orElse();
  }
}

abstract class _ChangedCep implements AddParkingLotEvent {
  const factory _ChangedCep(String input) = _$_ChangedCep;

  String get input;
  @JsonKey(ignore: true)
  _$ChangedCepCopyWith<_ChangedCep> get copyWith;
}

/// @nodoc
abstract class _$ChangedAvailableSpotsCopyWith<$Res> {
  factory _$ChangedAvailableSpotsCopyWith(_ChangedAvailableSpots value,
          $Res Function(_ChangedAvailableSpots) then) =
      __$ChangedAvailableSpotsCopyWithImpl<$Res>;
  $Res call({String input});
}

/// @nodoc
class __$ChangedAvailableSpotsCopyWithImpl<$Res>
    extends _$AddParkingLotEventCopyWithImpl<$Res>
    implements _$ChangedAvailableSpotsCopyWith<$Res> {
  __$ChangedAvailableSpotsCopyWithImpl(_ChangedAvailableSpots _value,
      $Res Function(_ChangedAvailableSpots) _then)
      : super(_value, (v) => _then(v as _ChangedAvailableSpots));

  @override
  _ChangedAvailableSpots get _value => super._value as _ChangedAvailableSpots;

  @override
  $Res call({
    Object input = freezed,
  }) {
    return _then(_ChangedAvailableSpots(
      input == freezed ? _value.input : input as String,
    ));
  }
}

/// @nodoc
class _$_ChangedAvailableSpots implements _ChangedAvailableSpots {
  const _$_ChangedAvailableSpots(this.input) : assert(input != null);

  @override
  final String input;

  @override
  String toString() {
    return 'AddParkingLotEvent.changedAvailableSpots(input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangedAvailableSpots &&
            (identical(other.input, input) ||
                const DeepCollectionEquality().equals(other.input, input)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(input);

  @JsonKey(ignore: true)
  @override
  _$ChangedAvailableSpotsCopyWith<_ChangedAvailableSpots> get copyWith =>
      __$ChangedAvailableSpotsCopyWithImpl<_ChangedAvailableSpots>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(Option<ParkingLot> initialParkingLotOption),
    @required TResult changedTitle(String input),
    @required TResult changedCep(String input),
    @required TResult changedAvailableSpots(String input),
    @required TResult changedPricePerHour(String input),
    @required TResult parkingLotSubmitted(),
  }) {
    assert(started != null);
    assert(changedTitle != null);
    assert(changedCep != null);
    assert(changedAvailableSpots != null);
    assert(changedPricePerHour != null);
    assert(parkingLotSubmitted != null);
    return changedAvailableSpots(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(Option<ParkingLot> initialParkingLotOption),
    TResult changedTitle(String input),
    TResult changedCep(String input),
    TResult changedAvailableSpots(String input),
    TResult changedPricePerHour(String input),
    TResult parkingLotSubmitted(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedAvailableSpots != null) {
      return changedAvailableSpots(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult changedTitle(_ChangedTitle value),
    @required TResult changedCep(_ChangedCep value),
    @required TResult changedAvailableSpots(_ChangedAvailableSpots value),
    @required TResult changedPricePerHour(_ChangedPricePerHour value),
    @required TResult parkingLotSubmitted(_ParkingLotSubmitted value),
  }) {
    assert(started != null);
    assert(changedTitle != null);
    assert(changedCep != null);
    assert(changedAvailableSpots != null);
    assert(changedPricePerHour != null);
    assert(parkingLotSubmitted != null);
    return changedAvailableSpots(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult changedTitle(_ChangedTitle value),
    TResult changedCep(_ChangedCep value),
    TResult changedAvailableSpots(_ChangedAvailableSpots value),
    TResult changedPricePerHour(_ChangedPricePerHour value),
    TResult parkingLotSubmitted(_ParkingLotSubmitted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedAvailableSpots != null) {
      return changedAvailableSpots(this);
    }
    return orElse();
  }
}

abstract class _ChangedAvailableSpots implements AddParkingLotEvent {
  const factory _ChangedAvailableSpots(String input) = _$_ChangedAvailableSpots;

  String get input;
  @JsonKey(ignore: true)
  _$ChangedAvailableSpotsCopyWith<_ChangedAvailableSpots> get copyWith;
}

/// @nodoc
abstract class _$ChangedPricePerHourCopyWith<$Res> {
  factory _$ChangedPricePerHourCopyWith(_ChangedPricePerHour value,
          $Res Function(_ChangedPricePerHour) then) =
      __$ChangedPricePerHourCopyWithImpl<$Res>;
  $Res call({String input});
}

/// @nodoc
class __$ChangedPricePerHourCopyWithImpl<$Res>
    extends _$AddParkingLotEventCopyWithImpl<$Res>
    implements _$ChangedPricePerHourCopyWith<$Res> {
  __$ChangedPricePerHourCopyWithImpl(
      _ChangedPricePerHour _value, $Res Function(_ChangedPricePerHour) _then)
      : super(_value, (v) => _then(v as _ChangedPricePerHour));

  @override
  _ChangedPricePerHour get _value => super._value as _ChangedPricePerHour;

  @override
  $Res call({
    Object input = freezed,
  }) {
    return _then(_ChangedPricePerHour(
      input == freezed ? _value.input : input as String,
    ));
  }
}

/// @nodoc
class _$_ChangedPricePerHour implements _ChangedPricePerHour {
  const _$_ChangedPricePerHour(this.input) : assert(input != null);

  @override
  final String input;

  @override
  String toString() {
    return 'AddParkingLotEvent.changedPricePerHour(input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangedPricePerHour &&
            (identical(other.input, input) ||
                const DeepCollectionEquality().equals(other.input, input)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(input);

  @JsonKey(ignore: true)
  @override
  _$ChangedPricePerHourCopyWith<_ChangedPricePerHour> get copyWith =>
      __$ChangedPricePerHourCopyWithImpl<_ChangedPricePerHour>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(Option<ParkingLot> initialParkingLotOption),
    @required TResult changedTitle(String input),
    @required TResult changedCep(String input),
    @required TResult changedAvailableSpots(String input),
    @required TResult changedPricePerHour(String input),
    @required TResult parkingLotSubmitted(),
  }) {
    assert(started != null);
    assert(changedTitle != null);
    assert(changedCep != null);
    assert(changedAvailableSpots != null);
    assert(changedPricePerHour != null);
    assert(parkingLotSubmitted != null);
    return changedPricePerHour(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(Option<ParkingLot> initialParkingLotOption),
    TResult changedTitle(String input),
    TResult changedCep(String input),
    TResult changedAvailableSpots(String input),
    TResult changedPricePerHour(String input),
    TResult parkingLotSubmitted(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedPricePerHour != null) {
      return changedPricePerHour(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult changedTitle(_ChangedTitle value),
    @required TResult changedCep(_ChangedCep value),
    @required TResult changedAvailableSpots(_ChangedAvailableSpots value),
    @required TResult changedPricePerHour(_ChangedPricePerHour value),
    @required TResult parkingLotSubmitted(_ParkingLotSubmitted value),
  }) {
    assert(started != null);
    assert(changedTitle != null);
    assert(changedCep != null);
    assert(changedAvailableSpots != null);
    assert(changedPricePerHour != null);
    assert(parkingLotSubmitted != null);
    return changedPricePerHour(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult changedTitle(_ChangedTitle value),
    TResult changedCep(_ChangedCep value),
    TResult changedAvailableSpots(_ChangedAvailableSpots value),
    TResult changedPricePerHour(_ChangedPricePerHour value),
    TResult parkingLotSubmitted(_ParkingLotSubmitted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedPricePerHour != null) {
      return changedPricePerHour(this);
    }
    return orElse();
  }
}

abstract class _ChangedPricePerHour implements AddParkingLotEvent {
  const factory _ChangedPricePerHour(String input) = _$_ChangedPricePerHour;

  String get input;
  @JsonKey(ignore: true)
  _$ChangedPricePerHourCopyWith<_ChangedPricePerHour> get copyWith;
}

/// @nodoc
abstract class _$ParkingLotSubmittedCopyWith<$Res> {
  factory _$ParkingLotSubmittedCopyWith(_ParkingLotSubmitted value,
          $Res Function(_ParkingLotSubmitted) then) =
      __$ParkingLotSubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class __$ParkingLotSubmittedCopyWithImpl<$Res>
    extends _$AddParkingLotEventCopyWithImpl<$Res>
    implements _$ParkingLotSubmittedCopyWith<$Res> {
  __$ParkingLotSubmittedCopyWithImpl(
      _ParkingLotSubmitted _value, $Res Function(_ParkingLotSubmitted) _then)
      : super(_value, (v) => _then(v as _ParkingLotSubmitted));

  @override
  _ParkingLotSubmitted get _value => super._value as _ParkingLotSubmitted;
}

/// @nodoc
class _$_ParkingLotSubmitted implements _ParkingLotSubmitted {
  const _$_ParkingLotSubmitted();

  @override
  String toString() {
    return 'AddParkingLotEvent.parkingLotSubmitted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ParkingLotSubmitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(Option<ParkingLot> initialParkingLotOption),
    @required TResult changedTitle(String input),
    @required TResult changedCep(String input),
    @required TResult changedAvailableSpots(String input),
    @required TResult changedPricePerHour(String input),
    @required TResult parkingLotSubmitted(),
  }) {
    assert(started != null);
    assert(changedTitle != null);
    assert(changedCep != null);
    assert(changedAvailableSpots != null);
    assert(changedPricePerHour != null);
    assert(parkingLotSubmitted != null);
    return parkingLotSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(Option<ParkingLot> initialParkingLotOption),
    TResult changedTitle(String input),
    TResult changedCep(String input),
    TResult changedAvailableSpots(String input),
    TResult changedPricePerHour(String input),
    TResult parkingLotSubmitted(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (parkingLotSubmitted != null) {
      return parkingLotSubmitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult changedTitle(_ChangedTitle value),
    @required TResult changedCep(_ChangedCep value),
    @required TResult changedAvailableSpots(_ChangedAvailableSpots value),
    @required TResult changedPricePerHour(_ChangedPricePerHour value),
    @required TResult parkingLotSubmitted(_ParkingLotSubmitted value),
  }) {
    assert(started != null);
    assert(changedTitle != null);
    assert(changedCep != null);
    assert(changedAvailableSpots != null);
    assert(changedPricePerHour != null);
    assert(parkingLotSubmitted != null);
    return parkingLotSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult changedTitle(_ChangedTitle value),
    TResult changedCep(_ChangedCep value),
    TResult changedAvailableSpots(_ChangedAvailableSpots value),
    TResult changedPricePerHour(_ChangedPricePerHour value),
    TResult parkingLotSubmitted(_ParkingLotSubmitted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (parkingLotSubmitted != null) {
      return parkingLotSubmitted(this);
    }
    return orElse();
  }
}

abstract class _ParkingLotSubmitted implements AddParkingLotEvent {
  const factory _ParkingLotSubmitted() = _$_ParkingLotSubmitted;
}

/// @nodoc
class _$AddParkingLotStateTearOff {
  const _$AddParkingLotStateTearOff();

// ignore: unused_element
  _AddParkingLotState call(
      {@required ParkingLot parkingLot,
      @required bool showErrorMessages,
      @required bool isSubmitting,
      @required Option<Either<ParkingFailure, Unit>> saveFailureOrSuccessOption,
      @required bool isEditing}) {
    return _AddParkingLotState(
      parkingLot: parkingLot,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
      isEditing: isEditing,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AddParkingLotState = _$AddParkingLotStateTearOff();

/// @nodoc
mixin _$AddParkingLotState {
  ParkingLot get parkingLot;
  bool get showErrorMessages;
  bool get isSubmitting;
  Option<Either<ParkingFailure, Unit>> get saveFailureOrSuccessOption;
  bool get isEditing;

  @JsonKey(ignore: true)
  $AddParkingLotStateCopyWith<AddParkingLotState> get copyWith;
}

/// @nodoc
abstract class $AddParkingLotStateCopyWith<$Res> {
  factory $AddParkingLotStateCopyWith(
          AddParkingLotState value, $Res Function(AddParkingLotState) then) =
      _$AddParkingLotStateCopyWithImpl<$Res>;
  $Res call(
      {ParkingLot parkingLot,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<ParkingFailure, Unit>> saveFailureOrSuccessOption,
      bool isEditing});

  $ParkingLotCopyWith<$Res> get parkingLot;
}

/// @nodoc
class _$AddParkingLotStateCopyWithImpl<$Res>
    implements $AddParkingLotStateCopyWith<$Res> {
  _$AddParkingLotStateCopyWithImpl(this._value, this._then);

  final AddParkingLotState _value;
  // ignore: unused_field
  final $Res Function(AddParkingLotState) _then;

  @override
  $Res call({
    Object parkingLot = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object saveFailureOrSuccessOption = freezed,
    Object isEditing = freezed,
  }) {
    return _then(_value.copyWith(
      parkingLot:
          parkingLot == freezed ? _value.parkingLot : parkingLot as ParkingLot,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<ParkingFailure, Unit>>,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
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
abstract class _$AddParkingLotStateCopyWith<$Res>
    implements $AddParkingLotStateCopyWith<$Res> {
  factory _$AddParkingLotStateCopyWith(
          _AddParkingLotState value, $Res Function(_AddParkingLotState) then) =
      __$AddParkingLotStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {ParkingLot parkingLot,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<ParkingFailure, Unit>> saveFailureOrSuccessOption,
      bool isEditing});

  @override
  $ParkingLotCopyWith<$Res> get parkingLot;
}

/// @nodoc
class __$AddParkingLotStateCopyWithImpl<$Res>
    extends _$AddParkingLotStateCopyWithImpl<$Res>
    implements _$AddParkingLotStateCopyWith<$Res> {
  __$AddParkingLotStateCopyWithImpl(
      _AddParkingLotState _value, $Res Function(_AddParkingLotState) _then)
      : super(_value, (v) => _then(v as _AddParkingLotState));

  @override
  _AddParkingLotState get _value => super._value as _AddParkingLotState;

  @override
  $Res call({
    Object parkingLot = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object saveFailureOrSuccessOption = freezed,
    Object isEditing = freezed,
  }) {
    return _then(_AddParkingLotState(
      parkingLot:
          parkingLot == freezed ? _value.parkingLot : parkingLot as ParkingLot,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<ParkingFailure, Unit>>,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
    ));
  }
}

@Implements(ValidationFormState)

/// @nodoc
class _$_AddParkingLotState implements _AddParkingLotState {
  const _$_AddParkingLotState(
      {@required this.parkingLot,
      @required this.showErrorMessages,
      @required this.isSubmitting,
      @required this.saveFailureOrSuccessOption,
      @required this.isEditing})
      : assert(parkingLot != null),
        assert(showErrorMessages != null),
        assert(isSubmitting != null),
        assert(saveFailureOrSuccessOption != null),
        assert(isEditing != null);

  @override
  final ParkingLot parkingLot;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<ParkingFailure, Unit>> saveFailureOrSuccessOption;
  @override
  final bool isEditing;

  @override
  String toString() {
    return 'AddParkingLotState(parkingLot: $parkingLot, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, saveFailureOrSuccessOption: $saveFailureOrSuccessOption, isEditing: $isEditing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddParkingLotState &&
            (identical(other.parkingLot, parkingLot) ||
                const DeepCollectionEquality()
                    .equals(other.parkingLot, parkingLot)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption)) &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(parkingLot) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption) ^
      const DeepCollectionEquality().hash(isEditing);

  @JsonKey(ignore: true)
  @override
  _$AddParkingLotStateCopyWith<_AddParkingLotState> get copyWith =>
      __$AddParkingLotStateCopyWithImpl<_AddParkingLotState>(this, _$identity);
}

abstract class _AddParkingLotState
    implements AddParkingLotState, ValidationFormState {
  const factory _AddParkingLotState(
      {@required ParkingLot parkingLot,
      @required bool showErrorMessages,
      @required bool isSubmitting,
      @required Option<Either<ParkingFailure, Unit>> saveFailureOrSuccessOption,
      @required bool isEditing}) = _$_AddParkingLotState;

  @override
  ParkingLot get parkingLot;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<ParkingFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  bool get isEditing;
  @override
  @JsonKey(ignore: true)
  _$AddParkingLotStateCopyWith<_AddParkingLotState> get copyWith;
}
