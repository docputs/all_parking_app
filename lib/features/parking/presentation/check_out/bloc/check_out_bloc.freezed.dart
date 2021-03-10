// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'check_out_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CheckOutEventTearOff {
  const _$CheckOutEventTearOff();

// ignore: unused_element
  _ChangedPricePerHour changedPricePerHour(String input) {
    return _ChangedPricePerHour(
      input,
    );
  }

// ignore: unused_element
  _Submitted submitted(ParkedVehicle vehicle) {
    return _Submitted(
      vehicle,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CheckOutEvent = _$CheckOutEventTearOff();

/// @nodoc
mixin _$CheckOutEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changedPricePerHour(String input),
    @required TResult submitted(ParkedVehicle vehicle),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changedPricePerHour(String input),
    TResult submitted(ParkedVehicle vehicle),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changedPricePerHour(_ChangedPricePerHour value),
    @required TResult submitted(_Submitted value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changedPricePerHour(_ChangedPricePerHour value),
    TResult submitted(_Submitted value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $CheckOutEventCopyWith<$Res> {
  factory $CheckOutEventCopyWith(
          CheckOutEvent value, $Res Function(CheckOutEvent) then) =
      _$CheckOutEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CheckOutEventCopyWithImpl<$Res>
    implements $CheckOutEventCopyWith<$Res> {
  _$CheckOutEventCopyWithImpl(this._value, this._then);

  final CheckOutEvent _value;
  // ignore: unused_field
  final $Res Function(CheckOutEvent) _then;
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
    extends _$CheckOutEventCopyWithImpl<$Res>
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
    return 'CheckOutEvent.changedPricePerHour(input: $input)';
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
    @required TResult changedPricePerHour(String input),
    @required TResult submitted(ParkedVehicle vehicle),
  }) {
    assert(changedPricePerHour != null);
    assert(submitted != null);
    return changedPricePerHour(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changedPricePerHour(String input),
    TResult submitted(ParkedVehicle vehicle),
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
    @required TResult changedPricePerHour(_ChangedPricePerHour value),
    @required TResult submitted(_Submitted value),
  }) {
    assert(changedPricePerHour != null);
    assert(submitted != null);
    return changedPricePerHour(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changedPricePerHour(_ChangedPricePerHour value),
    TResult submitted(_Submitted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedPricePerHour != null) {
      return changedPricePerHour(this);
    }
    return orElse();
  }
}

abstract class _ChangedPricePerHour implements CheckOutEvent {
  const factory _ChangedPricePerHour(String input) = _$_ChangedPricePerHour;

  String get input;
  @JsonKey(ignore: true)
  _$ChangedPricePerHourCopyWith<_ChangedPricePerHour> get copyWith;
}

/// @nodoc
abstract class _$SubmittedCopyWith<$Res> {
  factory _$SubmittedCopyWith(
          _Submitted value, $Res Function(_Submitted) then) =
      __$SubmittedCopyWithImpl<$Res>;
  $Res call({ParkedVehicle vehicle});

  $ParkedVehicleCopyWith<$Res> get vehicle;
}

/// @nodoc
class __$SubmittedCopyWithImpl<$Res> extends _$CheckOutEventCopyWithImpl<$Res>
    implements _$SubmittedCopyWith<$Res> {
  __$SubmittedCopyWithImpl(_Submitted _value, $Res Function(_Submitted) _then)
      : super(_value, (v) => _then(v as _Submitted));

  @override
  _Submitted get _value => super._value as _Submitted;

  @override
  $Res call({
    Object vehicle = freezed,
  }) {
    return _then(_Submitted(
      vehicle == freezed ? _value.vehicle : vehicle as ParkedVehicle,
    ));
  }

  @override
  $ParkedVehicleCopyWith<$Res> get vehicle {
    if (_value.vehicle == null) {
      return null;
    }
    return $ParkedVehicleCopyWith<$Res>(_value.vehicle, (value) {
      return _then(_value.copyWith(vehicle: value));
    });
  }
}

/// @nodoc
class _$_Submitted implements _Submitted {
  const _$_Submitted(this.vehicle) : assert(vehicle != null);

  @override
  final ParkedVehicle vehicle;

  @override
  String toString() {
    return 'CheckOutEvent.submitted(vehicle: $vehicle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Submitted &&
            (identical(other.vehicle, vehicle) ||
                const DeepCollectionEquality().equals(other.vehicle, vehicle)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(vehicle);

  @JsonKey(ignore: true)
  @override
  _$SubmittedCopyWith<_Submitted> get copyWith =>
      __$SubmittedCopyWithImpl<_Submitted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changedPricePerHour(String input),
    @required TResult submitted(ParkedVehicle vehicle),
  }) {
    assert(changedPricePerHour != null);
    assert(submitted != null);
    return submitted(vehicle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changedPricePerHour(String input),
    TResult submitted(ParkedVehicle vehicle),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (submitted != null) {
      return submitted(vehicle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changedPricePerHour(_ChangedPricePerHour value),
    @required TResult submitted(_Submitted value),
  }) {
    assert(changedPricePerHour != null);
    assert(submitted != null);
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changedPricePerHour(_ChangedPricePerHour value),
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

abstract class _Submitted implements CheckOutEvent {
  const factory _Submitted(ParkedVehicle vehicle) = _$_Submitted;

  ParkedVehicle get vehicle;
  @JsonKey(ignore: true)
  _$SubmittedCopyWith<_Submitted> get copyWith;
}

/// @nodoc
class _$CheckOutStateTearOff {
  const _$CheckOutStateTearOff();

// ignore: unused_element
  _CheckOutState call(
      {@required
      @nullable
          double overridenPricePerHour,
      @required
          bool isSubmitting,
      @required
          Option<Either<ParkingFailure, Unit>> submitFailureOrSuccessOption}) {
    return _CheckOutState(
      overridenPricePerHour: overridenPricePerHour,
      isSubmitting: isSubmitting,
      submitFailureOrSuccessOption: submitFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CheckOutState = _$CheckOutStateTearOff();

/// @nodoc
mixin _$CheckOutState {
  @nullable
  double get overridenPricePerHour;
  bool get isSubmitting;
  Option<Either<ParkingFailure, Unit>> get submitFailureOrSuccessOption;

  @JsonKey(ignore: true)
  $CheckOutStateCopyWith<CheckOutState> get copyWith;
}

/// @nodoc
abstract class $CheckOutStateCopyWith<$Res> {
  factory $CheckOutStateCopyWith(
          CheckOutState value, $Res Function(CheckOutState) then) =
      _$CheckOutStateCopyWithImpl<$Res>;
  $Res call(
      {@nullable double overridenPricePerHour,
      bool isSubmitting,
      Option<Either<ParkingFailure, Unit>> submitFailureOrSuccessOption});
}

/// @nodoc
class _$CheckOutStateCopyWithImpl<$Res>
    implements $CheckOutStateCopyWith<$Res> {
  _$CheckOutStateCopyWithImpl(this._value, this._then);

  final CheckOutState _value;
  // ignore: unused_field
  final $Res Function(CheckOutState) _then;

  @override
  $Res call({
    Object overridenPricePerHour = freezed,
    Object isSubmitting = freezed,
    Object submitFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      overridenPricePerHour: overridenPricePerHour == freezed
          ? _value.overridenPricePerHour
          : overridenPricePerHour as double,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      submitFailureOrSuccessOption: submitFailureOrSuccessOption == freezed
          ? _value.submitFailureOrSuccessOption
          : submitFailureOrSuccessOption
              as Option<Either<ParkingFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$CheckOutStateCopyWith<$Res>
    implements $CheckOutStateCopyWith<$Res> {
  factory _$CheckOutStateCopyWith(
          _CheckOutState value, $Res Function(_CheckOutState) then) =
      __$CheckOutStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable double overridenPricePerHour,
      bool isSubmitting,
      Option<Either<ParkingFailure, Unit>> submitFailureOrSuccessOption});
}

/// @nodoc
class __$CheckOutStateCopyWithImpl<$Res>
    extends _$CheckOutStateCopyWithImpl<$Res>
    implements _$CheckOutStateCopyWith<$Res> {
  __$CheckOutStateCopyWithImpl(
      _CheckOutState _value, $Res Function(_CheckOutState) _then)
      : super(_value, (v) => _then(v as _CheckOutState));

  @override
  _CheckOutState get _value => super._value as _CheckOutState;

  @override
  $Res call({
    Object overridenPricePerHour = freezed,
    Object isSubmitting = freezed,
    Object submitFailureOrSuccessOption = freezed,
  }) {
    return _then(_CheckOutState(
      overridenPricePerHour: overridenPricePerHour == freezed
          ? _value.overridenPricePerHour
          : overridenPricePerHour as double,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      submitFailureOrSuccessOption: submitFailureOrSuccessOption == freezed
          ? _value.submitFailureOrSuccessOption
          : submitFailureOrSuccessOption
              as Option<Either<ParkingFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_CheckOutState implements _CheckOutState {
  const _$_CheckOutState(
      {@required @nullable this.overridenPricePerHour,
      @required this.isSubmitting,
      @required this.submitFailureOrSuccessOption})
      : assert(isSubmitting != null),
        assert(submitFailureOrSuccessOption != null);

  @override
  @nullable
  final double overridenPricePerHour;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<ParkingFailure, Unit>> submitFailureOrSuccessOption;

  @override
  String toString() {
    return 'CheckOutState(overridenPricePerHour: $overridenPricePerHour, isSubmitting: $isSubmitting, submitFailureOrSuccessOption: $submitFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CheckOutState &&
            (identical(other.overridenPricePerHour, overridenPricePerHour) ||
                const DeepCollectionEquality().equals(
                    other.overridenPricePerHour, overridenPricePerHour)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.submitFailureOrSuccessOption,
                    submitFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.submitFailureOrSuccessOption,
                    submitFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(overridenPricePerHour) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(submitFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$CheckOutStateCopyWith<_CheckOutState> get copyWith =>
      __$CheckOutStateCopyWithImpl<_CheckOutState>(this, _$identity);
}

abstract class _CheckOutState implements CheckOutState {
  const factory _CheckOutState(
      {@required
      @nullable
          double overridenPricePerHour,
      @required
          bool isSubmitting,
      @required
          Option<Either<ParkingFailure, Unit>>
              submitFailureOrSuccessOption}) = _$_CheckOutState;

  @override
  @nullable
  double get overridenPricePerHour;
  @override
  bool get isSubmitting;
  @override
  Option<Either<ParkingFailure, Unit>> get submitFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$CheckOutStateCopyWith<_CheckOutState> get copyWith;
}
