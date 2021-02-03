// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'check_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CheckInEventTearOff {
  const _$CheckInEventTearOff();

// ignore: unused_element
  _ChangedLicensePlate changedLicensePlate(String input) {
    return _ChangedLicensePlate(
      input,
    );
  }

// ignore: unused_element
  _ChangedLabel changedLabel(String input) {
    return _ChangedLabel(
      input,
    );
  }

// ignore: unused_element
  _ChangedColor changedColor(VehicleColor input) {
    return _ChangedColor(
      input,
    );
  }

// ignore: unused_element
  _ChangedVehicleType changedVehicleType(VehicleType input) {
    return _ChangedVehicleType(
      input,
    );
  }

// ignore: unused_element
  _ChangedObservations changedObservations(String input) {
    return _ChangedObservations(
      input,
    );
  }

// ignore: unused_element
  _ChangedOwnerName changedOwnerName(String input) {
    return _ChangedOwnerName(
      input,
    );
  }

// ignore: unused_element
  _ChangedOwnerPhone changedOwnerPhone(String input) {
    return _ChangedOwnerPhone(
      input,
    );
  }

// ignore: unused_element
  _ChangedOwnerCpf changedOwnerCpf(String input) {
    return _ChangedOwnerCpf(
      input,
    );
  }

// ignore: unused_element
  _Submitted submitted(
      Future<bool> Function(BuildContext) confirmSubmit, BuildContext context) {
    return _Submitted(
      confirmSubmit,
      context,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CheckInEvent = _$CheckInEventTearOff();

/// @nodoc
mixin _$CheckInEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changedLicensePlate(String input),
    @required TResult changedLabel(String input),
    @required TResult changedColor(VehicleColor input),
    @required TResult changedVehicleType(VehicleType input),
    @required TResult changedObservations(String input),
    @required TResult changedOwnerName(String input),
    @required TResult changedOwnerPhone(String input),
    @required TResult changedOwnerCpf(String input),
    @required
        TResult submitted(Future<bool> Function(BuildContext) confirmSubmit,
            BuildContext context),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changedLicensePlate(String input),
    TResult changedLabel(String input),
    TResult changedColor(VehicleColor input),
    TResult changedVehicleType(VehicleType input),
    TResult changedObservations(String input),
    TResult changedOwnerName(String input),
    TResult changedOwnerPhone(String input),
    TResult changedOwnerCpf(String input),
    TResult submitted(Future<bool> Function(BuildContext) confirmSubmit,
        BuildContext context),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changedLicensePlate(_ChangedLicensePlate value),
    @required TResult changedLabel(_ChangedLabel value),
    @required TResult changedColor(_ChangedColor value),
    @required TResult changedVehicleType(_ChangedVehicleType value),
    @required TResult changedObservations(_ChangedObservations value),
    @required TResult changedOwnerName(_ChangedOwnerName value),
    @required TResult changedOwnerPhone(_ChangedOwnerPhone value),
    @required TResult changedOwnerCpf(_ChangedOwnerCpf value),
    @required TResult submitted(_Submitted value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changedLicensePlate(_ChangedLicensePlate value),
    TResult changedLabel(_ChangedLabel value),
    TResult changedColor(_ChangedColor value),
    TResult changedVehicleType(_ChangedVehicleType value),
    TResult changedObservations(_ChangedObservations value),
    TResult changedOwnerName(_ChangedOwnerName value),
    TResult changedOwnerPhone(_ChangedOwnerPhone value),
    TResult changedOwnerCpf(_ChangedOwnerCpf value),
    TResult submitted(_Submitted value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $CheckInEventCopyWith<$Res> {
  factory $CheckInEventCopyWith(
          CheckInEvent value, $Res Function(CheckInEvent) then) =
      _$CheckInEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CheckInEventCopyWithImpl<$Res> implements $CheckInEventCopyWith<$Res> {
  _$CheckInEventCopyWithImpl(this._value, this._then);

  final CheckInEvent _value;
  // ignore: unused_field
  final $Res Function(CheckInEvent) _then;
}

/// @nodoc
abstract class _$ChangedLicensePlateCopyWith<$Res> {
  factory _$ChangedLicensePlateCopyWith(_ChangedLicensePlate value,
          $Res Function(_ChangedLicensePlate) then) =
      __$ChangedLicensePlateCopyWithImpl<$Res>;
  $Res call({String input});
}

/// @nodoc
class __$ChangedLicensePlateCopyWithImpl<$Res>
    extends _$CheckInEventCopyWithImpl<$Res>
    implements _$ChangedLicensePlateCopyWith<$Res> {
  __$ChangedLicensePlateCopyWithImpl(
      _ChangedLicensePlate _value, $Res Function(_ChangedLicensePlate) _then)
      : super(_value, (v) => _then(v as _ChangedLicensePlate));

  @override
  _ChangedLicensePlate get _value => super._value as _ChangedLicensePlate;

  @override
  $Res call({
    Object input = freezed,
  }) {
    return _then(_ChangedLicensePlate(
      input == freezed ? _value.input : input as String,
    ));
  }
}

/// @nodoc
class _$_ChangedLicensePlate implements _ChangedLicensePlate {
  const _$_ChangedLicensePlate(this.input) : assert(input != null);

  @override
  final String input;

  @override
  String toString() {
    return 'CheckInEvent.changedLicensePlate(input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangedLicensePlate &&
            (identical(other.input, input) ||
                const DeepCollectionEquality().equals(other.input, input)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(input);

  @JsonKey(ignore: true)
  @override
  _$ChangedLicensePlateCopyWith<_ChangedLicensePlate> get copyWith =>
      __$ChangedLicensePlateCopyWithImpl<_ChangedLicensePlate>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changedLicensePlate(String input),
    @required TResult changedLabel(String input),
    @required TResult changedColor(VehicleColor input),
    @required TResult changedVehicleType(VehicleType input),
    @required TResult changedObservations(String input),
    @required TResult changedOwnerName(String input),
    @required TResult changedOwnerPhone(String input),
    @required TResult changedOwnerCpf(String input),
    @required
        TResult submitted(Future<bool> Function(BuildContext) confirmSubmit,
            BuildContext context),
  }) {
    assert(changedLicensePlate != null);
    assert(changedLabel != null);
    assert(changedColor != null);
    assert(changedVehicleType != null);
    assert(changedObservations != null);
    assert(changedOwnerName != null);
    assert(changedOwnerPhone != null);
    assert(changedOwnerCpf != null);
    assert(submitted != null);
    return changedLicensePlate(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changedLicensePlate(String input),
    TResult changedLabel(String input),
    TResult changedColor(VehicleColor input),
    TResult changedVehicleType(VehicleType input),
    TResult changedObservations(String input),
    TResult changedOwnerName(String input),
    TResult changedOwnerPhone(String input),
    TResult changedOwnerCpf(String input),
    TResult submitted(Future<bool> Function(BuildContext) confirmSubmit,
        BuildContext context),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedLicensePlate != null) {
      return changedLicensePlate(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changedLicensePlate(_ChangedLicensePlate value),
    @required TResult changedLabel(_ChangedLabel value),
    @required TResult changedColor(_ChangedColor value),
    @required TResult changedVehicleType(_ChangedVehicleType value),
    @required TResult changedObservations(_ChangedObservations value),
    @required TResult changedOwnerName(_ChangedOwnerName value),
    @required TResult changedOwnerPhone(_ChangedOwnerPhone value),
    @required TResult changedOwnerCpf(_ChangedOwnerCpf value),
    @required TResult submitted(_Submitted value),
  }) {
    assert(changedLicensePlate != null);
    assert(changedLabel != null);
    assert(changedColor != null);
    assert(changedVehicleType != null);
    assert(changedObservations != null);
    assert(changedOwnerName != null);
    assert(changedOwnerPhone != null);
    assert(changedOwnerCpf != null);
    assert(submitted != null);
    return changedLicensePlate(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changedLicensePlate(_ChangedLicensePlate value),
    TResult changedLabel(_ChangedLabel value),
    TResult changedColor(_ChangedColor value),
    TResult changedVehicleType(_ChangedVehicleType value),
    TResult changedObservations(_ChangedObservations value),
    TResult changedOwnerName(_ChangedOwnerName value),
    TResult changedOwnerPhone(_ChangedOwnerPhone value),
    TResult changedOwnerCpf(_ChangedOwnerCpf value),
    TResult submitted(_Submitted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedLicensePlate != null) {
      return changedLicensePlate(this);
    }
    return orElse();
  }
}

abstract class _ChangedLicensePlate implements CheckInEvent {
  const factory _ChangedLicensePlate(String input) = _$_ChangedLicensePlate;

  String get input;
  @JsonKey(ignore: true)
  _$ChangedLicensePlateCopyWith<_ChangedLicensePlate> get copyWith;
}

/// @nodoc
abstract class _$ChangedLabelCopyWith<$Res> {
  factory _$ChangedLabelCopyWith(
          _ChangedLabel value, $Res Function(_ChangedLabel) then) =
      __$ChangedLabelCopyWithImpl<$Res>;
  $Res call({String input});
}

/// @nodoc
class __$ChangedLabelCopyWithImpl<$Res> extends _$CheckInEventCopyWithImpl<$Res>
    implements _$ChangedLabelCopyWith<$Res> {
  __$ChangedLabelCopyWithImpl(
      _ChangedLabel _value, $Res Function(_ChangedLabel) _then)
      : super(_value, (v) => _then(v as _ChangedLabel));

  @override
  _ChangedLabel get _value => super._value as _ChangedLabel;

  @override
  $Res call({
    Object input = freezed,
  }) {
    return _then(_ChangedLabel(
      input == freezed ? _value.input : input as String,
    ));
  }
}

/// @nodoc
class _$_ChangedLabel implements _ChangedLabel {
  const _$_ChangedLabel(this.input) : assert(input != null);

  @override
  final String input;

  @override
  String toString() {
    return 'CheckInEvent.changedLabel(input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangedLabel &&
            (identical(other.input, input) ||
                const DeepCollectionEquality().equals(other.input, input)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(input);

  @JsonKey(ignore: true)
  @override
  _$ChangedLabelCopyWith<_ChangedLabel> get copyWith =>
      __$ChangedLabelCopyWithImpl<_ChangedLabel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changedLicensePlate(String input),
    @required TResult changedLabel(String input),
    @required TResult changedColor(VehicleColor input),
    @required TResult changedVehicleType(VehicleType input),
    @required TResult changedObservations(String input),
    @required TResult changedOwnerName(String input),
    @required TResult changedOwnerPhone(String input),
    @required TResult changedOwnerCpf(String input),
    @required
        TResult submitted(Future<bool> Function(BuildContext) confirmSubmit,
            BuildContext context),
  }) {
    assert(changedLicensePlate != null);
    assert(changedLabel != null);
    assert(changedColor != null);
    assert(changedVehicleType != null);
    assert(changedObservations != null);
    assert(changedOwnerName != null);
    assert(changedOwnerPhone != null);
    assert(changedOwnerCpf != null);
    assert(submitted != null);
    return changedLabel(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changedLicensePlate(String input),
    TResult changedLabel(String input),
    TResult changedColor(VehicleColor input),
    TResult changedVehicleType(VehicleType input),
    TResult changedObservations(String input),
    TResult changedOwnerName(String input),
    TResult changedOwnerPhone(String input),
    TResult changedOwnerCpf(String input),
    TResult submitted(Future<bool> Function(BuildContext) confirmSubmit,
        BuildContext context),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedLabel != null) {
      return changedLabel(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changedLicensePlate(_ChangedLicensePlate value),
    @required TResult changedLabel(_ChangedLabel value),
    @required TResult changedColor(_ChangedColor value),
    @required TResult changedVehicleType(_ChangedVehicleType value),
    @required TResult changedObservations(_ChangedObservations value),
    @required TResult changedOwnerName(_ChangedOwnerName value),
    @required TResult changedOwnerPhone(_ChangedOwnerPhone value),
    @required TResult changedOwnerCpf(_ChangedOwnerCpf value),
    @required TResult submitted(_Submitted value),
  }) {
    assert(changedLicensePlate != null);
    assert(changedLabel != null);
    assert(changedColor != null);
    assert(changedVehicleType != null);
    assert(changedObservations != null);
    assert(changedOwnerName != null);
    assert(changedOwnerPhone != null);
    assert(changedOwnerCpf != null);
    assert(submitted != null);
    return changedLabel(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changedLicensePlate(_ChangedLicensePlate value),
    TResult changedLabel(_ChangedLabel value),
    TResult changedColor(_ChangedColor value),
    TResult changedVehicleType(_ChangedVehicleType value),
    TResult changedObservations(_ChangedObservations value),
    TResult changedOwnerName(_ChangedOwnerName value),
    TResult changedOwnerPhone(_ChangedOwnerPhone value),
    TResult changedOwnerCpf(_ChangedOwnerCpf value),
    TResult submitted(_Submitted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedLabel != null) {
      return changedLabel(this);
    }
    return orElse();
  }
}

abstract class _ChangedLabel implements CheckInEvent {
  const factory _ChangedLabel(String input) = _$_ChangedLabel;

  String get input;
  @JsonKey(ignore: true)
  _$ChangedLabelCopyWith<_ChangedLabel> get copyWith;
}

/// @nodoc
abstract class _$ChangedColorCopyWith<$Res> {
  factory _$ChangedColorCopyWith(
          _ChangedColor value, $Res Function(_ChangedColor) then) =
      __$ChangedColorCopyWithImpl<$Res>;
  $Res call({VehicleColor input});
}

/// @nodoc
class __$ChangedColorCopyWithImpl<$Res> extends _$CheckInEventCopyWithImpl<$Res>
    implements _$ChangedColorCopyWith<$Res> {
  __$ChangedColorCopyWithImpl(
      _ChangedColor _value, $Res Function(_ChangedColor) _then)
      : super(_value, (v) => _then(v as _ChangedColor));

  @override
  _ChangedColor get _value => super._value as _ChangedColor;

  @override
  $Res call({
    Object input = freezed,
  }) {
    return _then(_ChangedColor(
      input == freezed ? _value.input : input as VehicleColor,
    ));
  }
}

/// @nodoc
class _$_ChangedColor implements _ChangedColor {
  const _$_ChangedColor(this.input) : assert(input != null);

  @override
  final VehicleColor input;

  @override
  String toString() {
    return 'CheckInEvent.changedColor(input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangedColor &&
            (identical(other.input, input) ||
                const DeepCollectionEquality().equals(other.input, input)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(input);

  @JsonKey(ignore: true)
  @override
  _$ChangedColorCopyWith<_ChangedColor> get copyWith =>
      __$ChangedColorCopyWithImpl<_ChangedColor>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changedLicensePlate(String input),
    @required TResult changedLabel(String input),
    @required TResult changedColor(VehicleColor input),
    @required TResult changedVehicleType(VehicleType input),
    @required TResult changedObservations(String input),
    @required TResult changedOwnerName(String input),
    @required TResult changedOwnerPhone(String input),
    @required TResult changedOwnerCpf(String input),
    @required
        TResult submitted(Future<bool> Function(BuildContext) confirmSubmit,
            BuildContext context),
  }) {
    assert(changedLicensePlate != null);
    assert(changedLabel != null);
    assert(changedColor != null);
    assert(changedVehicleType != null);
    assert(changedObservations != null);
    assert(changedOwnerName != null);
    assert(changedOwnerPhone != null);
    assert(changedOwnerCpf != null);
    assert(submitted != null);
    return changedColor(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changedLicensePlate(String input),
    TResult changedLabel(String input),
    TResult changedColor(VehicleColor input),
    TResult changedVehicleType(VehicleType input),
    TResult changedObservations(String input),
    TResult changedOwnerName(String input),
    TResult changedOwnerPhone(String input),
    TResult changedOwnerCpf(String input),
    TResult submitted(Future<bool> Function(BuildContext) confirmSubmit,
        BuildContext context),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedColor != null) {
      return changedColor(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changedLicensePlate(_ChangedLicensePlate value),
    @required TResult changedLabel(_ChangedLabel value),
    @required TResult changedColor(_ChangedColor value),
    @required TResult changedVehicleType(_ChangedVehicleType value),
    @required TResult changedObservations(_ChangedObservations value),
    @required TResult changedOwnerName(_ChangedOwnerName value),
    @required TResult changedOwnerPhone(_ChangedOwnerPhone value),
    @required TResult changedOwnerCpf(_ChangedOwnerCpf value),
    @required TResult submitted(_Submitted value),
  }) {
    assert(changedLicensePlate != null);
    assert(changedLabel != null);
    assert(changedColor != null);
    assert(changedVehicleType != null);
    assert(changedObservations != null);
    assert(changedOwnerName != null);
    assert(changedOwnerPhone != null);
    assert(changedOwnerCpf != null);
    assert(submitted != null);
    return changedColor(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changedLicensePlate(_ChangedLicensePlate value),
    TResult changedLabel(_ChangedLabel value),
    TResult changedColor(_ChangedColor value),
    TResult changedVehicleType(_ChangedVehicleType value),
    TResult changedObservations(_ChangedObservations value),
    TResult changedOwnerName(_ChangedOwnerName value),
    TResult changedOwnerPhone(_ChangedOwnerPhone value),
    TResult changedOwnerCpf(_ChangedOwnerCpf value),
    TResult submitted(_Submitted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedColor != null) {
      return changedColor(this);
    }
    return orElse();
  }
}

abstract class _ChangedColor implements CheckInEvent {
  const factory _ChangedColor(VehicleColor input) = _$_ChangedColor;

  VehicleColor get input;
  @JsonKey(ignore: true)
  _$ChangedColorCopyWith<_ChangedColor> get copyWith;
}

/// @nodoc
abstract class _$ChangedVehicleTypeCopyWith<$Res> {
  factory _$ChangedVehicleTypeCopyWith(
          _ChangedVehicleType value, $Res Function(_ChangedVehicleType) then) =
      __$ChangedVehicleTypeCopyWithImpl<$Res>;
  $Res call({VehicleType input});
}

/// @nodoc
class __$ChangedVehicleTypeCopyWithImpl<$Res>
    extends _$CheckInEventCopyWithImpl<$Res>
    implements _$ChangedVehicleTypeCopyWith<$Res> {
  __$ChangedVehicleTypeCopyWithImpl(
      _ChangedVehicleType _value, $Res Function(_ChangedVehicleType) _then)
      : super(_value, (v) => _then(v as _ChangedVehicleType));

  @override
  _ChangedVehicleType get _value => super._value as _ChangedVehicleType;

  @override
  $Res call({
    Object input = freezed,
  }) {
    return _then(_ChangedVehicleType(
      input == freezed ? _value.input : input as VehicleType,
    ));
  }
}

/// @nodoc
class _$_ChangedVehicleType implements _ChangedVehicleType {
  const _$_ChangedVehicleType(this.input) : assert(input != null);

  @override
  final VehicleType input;

  @override
  String toString() {
    return 'CheckInEvent.changedVehicleType(input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangedVehicleType &&
            (identical(other.input, input) ||
                const DeepCollectionEquality().equals(other.input, input)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(input);

  @JsonKey(ignore: true)
  @override
  _$ChangedVehicleTypeCopyWith<_ChangedVehicleType> get copyWith =>
      __$ChangedVehicleTypeCopyWithImpl<_ChangedVehicleType>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changedLicensePlate(String input),
    @required TResult changedLabel(String input),
    @required TResult changedColor(VehicleColor input),
    @required TResult changedVehicleType(VehicleType input),
    @required TResult changedObservations(String input),
    @required TResult changedOwnerName(String input),
    @required TResult changedOwnerPhone(String input),
    @required TResult changedOwnerCpf(String input),
    @required
        TResult submitted(Future<bool> Function(BuildContext) confirmSubmit,
            BuildContext context),
  }) {
    assert(changedLicensePlate != null);
    assert(changedLabel != null);
    assert(changedColor != null);
    assert(changedVehicleType != null);
    assert(changedObservations != null);
    assert(changedOwnerName != null);
    assert(changedOwnerPhone != null);
    assert(changedOwnerCpf != null);
    assert(submitted != null);
    return changedVehicleType(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changedLicensePlate(String input),
    TResult changedLabel(String input),
    TResult changedColor(VehicleColor input),
    TResult changedVehicleType(VehicleType input),
    TResult changedObservations(String input),
    TResult changedOwnerName(String input),
    TResult changedOwnerPhone(String input),
    TResult changedOwnerCpf(String input),
    TResult submitted(Future<bool> Function(BuildContext) confirmSubmit,
        BuildContext context),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedVehicleType != null) {
      return changedVehicleType(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changedLicensePlate(_ChangedLicensePlate value),
    @required TResult changedLabel(_ChangedLabel value),
    @required TResult changedColor(_ChangedColor value),
    @required TResult changedVehicleType(_ChangedVehicleType value),
    @required TResult changedObservations(_ChangedObservations value),
    @required TResult changedOwnerName(_ChangedOwnerName value),
    @required TResult changedOwnerPhone(_ChangedOwnerPhone value),
    @required TResult changedOwnerCpf(_ChangedOwnerCpf value),
    @required TResult submitted(_Submitted value),
  }) {
    assert(changedLicensePlate != null);
    assert(changedLabel != null);
    assert(changedColor != null);
    assert(changedVehicleType != null);
    assert(changedObservations != null);
    assert(changedOwnerName != null);
    assert(changedOwnerPhone != null);
    assert(changedOwnerCpf != null);
    assert(submitted != null);
    return changedVehicleType(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changedLicensePlate(_ChangedLicensePlate value),
    TResult changedLabel(_ChangedLabel value),
    TResult changedColor(_ChangedColor value),
    TResult changedVehicleType(_ChangedVehicleType value),
    TResult changedObservations(_ChangedObservations value),
    TResult changedOwnerName(_ChangedOwnerName value),
    TResult changedOwnerPhone(_ChangedOwnerPhone value),
    TResult changedOwnerCpf(_ChangedOwnerCpf value),
    TResult submitted(_Submitted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedVehicleType != null) {
      return changedVehicleType(this);
    }
    return orElse();
  }
}

abstract class _ChangedVehicleType implements CheckInEvent {
  const factory _ChangedVehicleType(VehicleType input) = _$_ChangedVehicleType;

  VehicleType get input;
  @JsonKey(ignore: true)
  _$ChangedVehicleTypeCopyWith<_ChangedVehicleType> get copyWith;
}

/// @nodoc
abstract class _$ChangedObservationsCopyWith<$Res> {
  factory _$ChangedObservationsCopyWith(_ChangedObservations value,
          $Res Function(_ChangedObservations) then) =
      __$ChangedObservationsCopyWithImpl<$Res>;
  $Res call({String input});
}

/// @nodoc
class __$ChangedObservationsCopyWithImpl<$Res>
    extends _$CheckInEventCopyWithImpl<$Res>
    implements _$ChangedObservationsCopyWith<$Res> {
  __$ChangedObservationsCopyWithImpl(
      _ChangedObservations _value, $Res Function(_ChangedObservations) _then)
      : super(_value, (v) => _then(v as _ChangedObservations));

  @override
  _ChangedObservations get _value => super._value as _ChangedObservations;

  @override
  $Res call({
    Object input = freezed,
  }) {
    return _then(_ChangedObservations(
      input == freezed ? _value.input : input as String,
    ));
  }
}

/// @nodoc
class _$_ChangedObservations implements _ChangedObservations {
  const _$_ChangedObservations(this.input) : assert(input != null);

  @override
  final String input;

  @override
  String toString() {
    return 'CheckInEvent.changedObservations(input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangedObservations &&
            (identical(other.input, input) ||
                const DeepCollectionEquality().equals(other.input, input)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(input);

  @JsonKey(ignore: true)
  @override
  _$ChangedObservationsCopyWith<_ChangedObservations> get copyWith =>
      __$ChangedObservationsCopyWithImpl<_ChangedObservations>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changedLicensePlate(String input),
    @required TResult changedLabel(String input),
    @required TResult changedColor(VehicleColor input),
    @required TResult changedVehicleType(VehicleType input),
    @required TResult changedObservations(String input),
    @required TResult changedOwnerName(String input),
    @required TResult changedOwnerPhone(String input),
    @required TResult changedOwnerCpf(String input),
    @required
        TResult submitted(Future<bool> Function(BuildContext) confirmSubmit,
            BuildContext context),
  }) {
    assert(changedLicensePlate != null);
    assert(changedLabel != null);
    assert(changedColor != null);
    assert(changedVehicleType != null);
    assert(changedObservations != null);
    assert(changedOwnerName != null);
    assert(changedOwnerPhone != null);
    assert(changedOwnerCpf != null);
    assert(submitted != null);
    return changedObservations(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changedLicensePlate(String input),
    TResult changedLabel(String input),
    TResult changedColor(VehicleColor input),
    TResult changedVehicleType(VehicleType input),
    TResult changedObservations(String input),
    TResult changedOwnerName(String input),
    TResult changedOwnerPhone(String input),
    TResult changedOwnerCpf(String input),
    TResult submitted(Future<bool> Function(BuildContext) confirmSubmit,
        BuildContext context),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedObservations != null) {
      return changedObservations(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changedLicensePlate(_ChangedLicensePlate value),
    @required TResult changedLabel(_ChangedLabel value),
    @required TResult changedColor(_ChangedColor value),
    @required TResult changedVehicleType(_ChangedVehicleType value),
    @required TResult changedObservations(_ChangedObservations value),
    @required TResult changedOwnerName(_ChangedOwnerName value),
    @required TResult changedOwnerPhone(_ChangedOwnerPhone value),
    @required TResult changedOwnerCpf(_ChangedOwnerCpf value),
    @required TResult submitted(_Submitted value),
  }) {
    assert(changedLicensePlate != null);
    assert(changedLabel != null);
    assert(changedColor != null);
    assert(changedVehicleType != null);
    assert(changedObservations != null);
    assert(changedOwnerName != null);
    assert(changedOwnerPhone != null);
    assert(changedOwnerCpf != null);
    assert(submitted != null);
    return changedObservations(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changedLicensePlate(_ChangedLicensePlate value),
    TResult changedLabel(_ChangedLabel value),
    TResult changedColor(_ChangedColor value),
    TResult changedVehicleType(_ChangedVehicleType value),
    TResult changedObservations(_ChangedObservations value),
    TResult changedOwnerName(_ChangedOwnerName value),
    TResult changedOwnerPhone(_ChangedOwnerPhone value),
    TResult changedOwnerCpf(_ChangedOwnerCpf value),
    TResult submitted(_Submitted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedObservations != null) {
      return changedObservations(this);
    }
    return orElse();
  }
}

abstract class _ChangedObservations implements CheckInEvent {
  const factory _ChangedObservations(String input) = _$_ChangedObservations;

  String get input;
  @JsonKey(ignore: true)
  _$ChangedObservationsCopyWith<_ChangedObservations> get copyWith;
}

/// @nodoc
abstract class _$ChangedOwnerNameCopyWith<$Res> {
  factory _$ChangedOwnerNameCopyWith(
          _ChangedOwnerName value, $Res Function(_ChangedOwnerName) then) =
      __$ChangedOwnerNameCopyWithImpl<$Res>;
  $Res call({String input});
}

/// @nodoc
class __$ChangedOwnerNameCopyWithImpl<$Res>
    extends _$CheckInEventCopyWithImpl<$Res>
    implements _$ChangedOwnerNameCopyWith<$Res> {
  __$ChangedOwnerNameCopyWithImpl(
      _ChangedOwnerName _value, $Res Function(_ChangedOwnerName) _then)
      : super(_value, (v) => _then(v as _ChangedOwnerName));

  @override
  _ChangedOwnerName get _value => super._value as _ChangedOwnerName;

  @override
  $Res call({
    Object input = freezed,
  }) {
    return _then(_ChangedOwnerName(
      input == freezed ? _value.input : input as String,
    ));
  }
}

/// @nodoc
class _$_ChangedOwnerName implements _ChangedOwnerName {
  const _$_ChangedOwnerName(this.input) : assert(input != null);

  @override
  final String input;

  @override
  String toString() {
    return 'CheckInEvent.changedOwnerName(input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangedOwnerName &&
            (identical(other.input, input) ||
                const DeepCollectionEquality().equals(other.input, input)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(input);

  @JsonKey(ignore: true)
  @override
  _$ChangedOwnerNameCopyWith<_ChangedOwnerName> get copyWith =>
      __$ChangedOwnerNameCopyWithImpl<_ChangedOwnerName>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changedLicensePlate(String input),
    @required TResult changedLabel(String input),
    @required TResult changedColor(VehicleColor input),
    @required TResult changedVehicleType(VehicleType input),
    @required TResult changedObservations(String input),
    @required TResult changedOwnerName(String input),
    @required TResult changedOwnerPhone(String input),
    @required TResult changedOwnerCpf(String input),
    @required
        TResult submitted(Future<bool> Function(BuildContext) confirmSubmit,
            BuildContext context),
  }) {
    assert(changedLicensePlate != null);
    assert(changedLabel != null);
    assert(changedColor != null);
    assert(changedVehicleType != null);
    assert(changedObservations != null);
    assert(changedOwnerName != null);
    assert(changedOwnerPhone != null);
    assert(changedOwnerCpf != null);
    assert(submitted != null);
    return changedOwnerName(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changedLicensePlate(String input),
    TResult changedLabel(String input),
    TResult changedColor(VehicleColor input),
    TResult changedVehicleType(VehicleType input),
    TResult changedObservations(String input),
    TResult changedOwnerName(String input),
    TResult changedOwnerPhone(String input),
    TResult changedOwnerCpf(String input),
    TResult submitted(Future<bool> Function(BuildContext) confirmSubmit,
        BuildContext context),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedOwnerName != null) {
      return changedOwnerName(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changedLicensePlate(_ChangedLicensePlate value),
    @required TResult changedLabel(_ChangedLabel value),
    @required TResult changedColor(_ChangedColor value),
    @required TResult changedVehicleType(_ChangedVehicleType value),
    @required TResult changedObservations(_ChangedObservations value),
    @required TResult changedOwnerName(_ChangedOwnerName value),
    @required TResult changedOwnerPhone(_ChangedOwnerPhone value),
    @required TResult changedOwnerCpf(_ChangedOwnerCpf value),
    @required TResult submitted(_Submitted value),
  }) {
    assert(changedLicensePlate != null);
    assert(changedLabel != null);
    assert(changedColor != null);
    assert(changedVehicleType != null);
    assert(changedObservations != null);
    assert(changedOwnerName != null);
    assert(changedOwnerPhone != null);
    assert(changedOwnerCpf != null);
    assert(submitted != null);
    return changedOwnerName(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changedLicensePlate(_ChangedLicensePlate value),
    TResult changedLabel(_ChangedLabel value),
    TResult changedColor(_ChangedColor value),
    TResult changedVehicleType(_ChangedVehicleType value),
    TResult changedObservations(_ChangedObservations value),
    TResult changedOwnerName(_ChangedOwnerName value),
    TResult changedOwnerPhone(_ChangedOwnerPhone value),
    TResult changedOwnerCpf(_ChangedOwnerCpf value),
    TResult submitted(_Submitted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedOwnerName != null) {
      return changedOwnerName(this);
    }
    return orElse();
  }
}

abstract class _ChangedOwnerName implements CheckInEvent {
  const factory _ChangedOwnerName(String input) = _$_ChangedOwnerName;

  String get input;
  @JsonKey(ignore: true)
  _$ChangedOwnerNameCopyWith<_ChangedOwnerName> get copyWith;
}

/// @nodoc
abstract class _$ChangedOwnerPhoneCopyWith<$Res> {
  factory _$ChangedOwnerPhoneCopyWith(
          _ChangedOwnerPhone value, $Res Function(_ChangedOwnerPhone) then) =
      __$ChangedOwnerPhoneCopyWithImpl<$Res>;
  $Res call({String input});
}

/// @nodoc
class __$ChangedOwnerPhoneCopyWithImpl<$Res>
    extends _$CheckInEventCopyWithImpl<$Res>
    implements _$ChangedOwnerPhoneCopyWith<$Res> {
  __$ChangedOwnerPhoneCopyWithImpl(
      _ChangedOwnerPhone _value, $Res Function(_ChangedOwnerPhone) _then)
      : super(_value, (v) => _then(v as _ChangedOwnerPhone));

  @override
  _ChangedOwnerPhone get _value => super._value as _ChangedOwnerPhone;

  @override
  $Res call({
    Object input = freezed,
  }) {
    return _then(_ChangedOwnerPhone(
      input == freezed ? _value.input : input as String,
    ));
  }
}

/// @nodoc
class _$_ChangedOwnerPhone implements _ChangedOwnerPhone {
  const _$_ChangedOwnerPhone(this.input) : assert(input != null);

  @override
  final String input;

  @override
  String toString() {
    return 'CheckInEvent.changedOwnerPhone(input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangedOwnerPhone &&
            (identical(other.input, input) ||
                const DeepCollectionEquality().equals(other.input, input)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(input);

  @JsonKey(ignore: true)
  @override
  _$ChangedOwnerPhoneCopyWith<_ChangedOwnerPhone> get copyWith =>
      __$ChangedOwnerPhoneCopyWithImpl<_ChangedOwnerPhone>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changedLicensePlate(String input),
    @required TResult changedLabel(String input),
    @required TResult changedColor(VehicleColor input),
    @required TResult changedVehicleType(VehicleType input),
    @required TResult changedObservations(String input),
    @required TResult changedOwnerName(String input),
    @required TResult changedOwnerPhone(String input),
    @required TResult changedOwnerCpf(String input),
    @required
        TResult submitted(Future<bool> Function(BuildContext) confirmSubmit,
            BuildContext context),
  }) {
    assert(changedLicensePlate != null);
    assert(changedLabel != null);
    assert(changedColor != null);
    assert(changedVehicleType != null);
    assert(changedObservations != null);
    assert(changedOwnerName != null);
    assert(changedOwnerPhone != null);
    assert(changedOwnerCpf != null);
    assert(submitted != null);
    return changedOwnerPhone(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changedLicensePlate(String input),
    TResult changedLabel(String input),
    TResult changedColor(VehicleColor input),
    TResult changedVehicleType(VehicleType input),
    TResult changedObservations(String input),
    TResult changedOwnerName(String input),
    TResult changedOwnerPhone(String input),
    TResult changedOwnerCpf(String input),
    TResult submitted(Future<bool> Function(BuildContext) confirmSubmit,
        BuildContext context),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedOwnerPhone != null) {
      return changedOwnerPhone(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changedLicensePlate(_ChangedLicensePlate value),
    @required TResult changedLabel(_ChangedLabel value),
    @required TResult changedColor(_ChangedColor value),
    @required TResult changedVehicleType(_ChangedVehicleType value),
    @required TResult changedObservations(_ChangedObservations value),
    @required TResult changedOwnerName(_ChangedOwnerName value),
    @required TResult changedOwnerPhone(_ChangedOwnerPhone value),
    @required TResult changedOwnerCpf(_ChangedOwnerCpf value),
    @required TResult submitted(_Submitted value),
  }) {
    assert(changedLicensePlate != null);
    assert(changedLabel != null);
    assert(changedColor != null);
    assert(changedVehicleType != null);
    assert(changedObservations != null);
    assert(changedOwnerName != null);
    assert(changedOwnerPhone != null);
    assert(changedOwnerCpf != null);
    assert(submitted != null);
    return changedOwnerPhone(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changedLicensePlate(_ChangedLicensePlate value),
    TResult changedLabel(_ChangedLabel value),
    TResult changedColor(_ChangedColor value),
    TResult changedVehicleType(_ChangedVehicleType value),
    TResult changedObservations(_ChangedObservations value),
    TResult changedOwnerName(_ChangedOwnerName value),
    TResult changedOwnerPhone(_ChangedOwnerPhone value),
    TResult changedOwnerCpf(_ChangedOwnerCpf value),
    TResult submitted(_Submitted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedOwnerPhone != null) {
      return changedOwnerPhone(this);
    }
    return orElse();
  }
}

abstract class _ChangedOwnerPhone implements CheckInEvent {
  const factory _ChangedOwnerPhone(String input) = _$_ChangedOwnerPhone;

  String get input;
  @JsonKey(ignore: true)
  _$ChangedOwnerPhoneCopyWith<_ChangedOwnerPhone> get copyWith;
}

/// @nodoc
abstract class _$ChangedOwnerCpfCopyWith<$Res> {
  factory _$ChangedOwnerCpfCopyWith(
          _ChangedOwnerCpf value, $Res Function(_ChangedOwnerCpf) then) =
      __$ChangedOwnerCpfCopyWithImpl<$Res>;
  $Res call({String input});
}

/// @nodoc
class __$ChangedOwnerCpfCopyWithImpl<$Res>
    extends _$CheckInEventCopyWithImpl<$Res>
    implements _$ChangedOwnerCpfCopyWith<$Res> {
  __$ChangedOwnerCpfCopyWithImpl(
      _ChangedOwnerCpf _value, $Res Function(_ChangedOwnerCpf) _then)
      : super(_value, (v) => _then(v as _ChangedOwnerCpf));

  @override
  _ChangedOwnerCpf get _value => super._value as _ChangedOwnerCpf;

  @override
  $Res call({
    Object input = freezed,
  }) {
    return _then(_ChangedOwnerCpf(
      input == freezed ? _value.input : input as String,
    ));
  }
}

/// @nodoc
class _$_ChangedOwnerCpf implements _ChangedOwnerCpf {
  const _$_ChangedOwnerCpf(this.input) : assert(input != null);

  @override
  final String input;

  @override
  String toString() {
    return 'CheckInEvent.changedOwnerCpf(input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangedOwnerCpf &&
            (identical(other.input, input) ||
                const DeepCollectionEquality().equals(other.input, input)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(input);

  @JsonKey(ignore: true)
  @override
  _$ChangedOwnerCpfCopyWith<_ChangedOwnerCpf> get copyWith =>
      __$ChangedOwnerCpfCopyWithImpl<_ChangedOwnerCpf>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changedLicensePlate(String input),
    @required TResult changedLabel(String input),
    @required TResult changedColor(VehicleColor input),
    @required TResult changedVehicleType(VehicleType input),
    @required TResult changedObservations(String input),
    @required TResult changedOwnerName(String input),
    @required TResult changedOwnerPhone(String input),
    @required TResult changedOwnerCpf(String input),
    @required
        TResult submitted(Future<bool> Function(BuildContext) confirmSubmit,
            BuildContext context),
  }) {
    assert(changedLicensePlate != null);
    assert(changedLabel != null);
    assert(changedColor != null);
    assert(changedVehicleType != null);
    assert(changedObservations != null);
    assert(changedOwnerName != null);
    assert(changedOwnerPhone != null);
    assert(changedOwnerCpf != null);
    assert(submitted != null);
    return changedOwnerCpf(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changedLicensePlate(String input),
    TResult changedLabel(String input),
    TResult changedColor(VehicleColor input),
    TResult changedVehicleType(VehicleType input),
    TResult changedObservations(String input),
    TResult changedOwnerName(String input),
    TResult changedOwnerPhone(String input),
    TResult changedOwnerCpf(String input),
    TResult submitted(Future<bool> Function(BuildContext) confirmSubmit,
        BuildContext context),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedOwnerCpf != null) {
      return changedOwnerCpf(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changedLicensePlate(_ChangedLicensePlate value),
    @required TResult changedLabel(_ChangedLabel value),
    @required TResult changedColor(_ChangedColor value),
    @required TResult changedVehicleType(_ChangedVehicleType value),
    @required TResult changedObservations(_ChangedObservations value),
    @required TResult changedOwnerName(_ChangedOwnerName value),
    @required TResult changedOwnerPhone(_ChangedOwnerPhone value),
    @required TResult changedOwnerCpf(_ChangedOwnerCpf value),
    @required TResult submitted(_Submitted value),
  }) {
    assert(changedLicensePlate != null);
    assert(changedLabel != null);
    assert(changedColor != null);
    assert(changedVehicleType != null);
    assert(changedObservations != null);
    assert(changedOwnerName != null);
    assert(changedOwnerPhone != null);
    assert(changedOwnerCpf != null);
    assert(submitted != null);
    return changedOwnerCpf(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changedLicensePlate(_ChangedLicensePlate value),
    TResult changedLabel(_ChangedLabel value),
    TResult changedColor(_ChangedColor value),
    TResult changedVehicleType(_ChangedVehicleType value),
    TResult changedObservations(_ChangedObservations value),
    TResult changedOwnerName(_ChangedOwnerName value),
    TResult changedOwnerPhone(_ChangedOwnerPhone value),
    TResult changedOwnerCpf(_ChangedOwnerCpf value),
    TResult submitted(_Submitted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedOwnerCpf != null) {
      return changedOwnerCpf(this);
    }
    return orElse();
  }
}

abstract class _ChangedOwnerCpf implements CheckInEvent {
  const factory _ChangedOwnerCpf(String input) = _$_ChangedOwnerCpf;

  String get input;
  @JsonKey(ignore: true)
  _$ChangedOwnerCpfCopyWith<_ChangedOwnerCpf> get copyWith;
}

/// @nodoc
abstract class _$SubmittedCopyWith<$Res> {
  factory _$SubmittedCopyWith(
          _Submitted value, $Res Function(_Submitted) then) =
      __$SubmittedCopyWithImpl<$Res>;
  $Res call(
      {Future<bool> Function(BuildContext) confirmSubmit,
      BuildContext context});
}

/// @nodoc
class __$SubmittedCopyWithImpl<$Res> extends _$CheckInEventCopyWithImpl<$Res>
    implements _$SubmittedCopyWith<$Res> {
  __$SubmittedCopyWithImpl(_Submitted _value, $Res Function(_Submitted) _then)
      : super(_value, (v) => _then(v as _Submitted));

  @override
  _Submitted get _value => super._value as _Submitted;

  @override
  $Res call({
    Object confirmSubmit = freezed,
    Object context = freezed,
  }) {
    return _then(_Submitted(
      confirmSubmit == freezed
          ? _value.confirmSubmit
          : confirmSubmit as Future<bool> Function(BuildContext),
      context == freezed ? _value.context : context as BuildContext,
    ));
  }
}

/// @nodoc
class _$_Submitted implements _Submitted {
  const _$_Submitted(this.confirmSubmit, this.context)
      : assert(confirmSubmit != null),
        assert(context != null);

  @override
  final Future<bool> Function(BuildContext) confirmSubmit;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'CheckInEvent.submitted(confirmSubmit: $confirmSubmit, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Submitted &&
            (identical(other.confirmSubmit, confirmSubmit) ||
                const DeepCollectionEquality()
                    .equals(other.confirmSubmit, confirmSubmit)) &&
            (identical(other.context, context) ||
                const DeepCollectionEquality().equals(other.context, context)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(confirmSubmit) ^
      const DeepCollectionEquality().hash(context);

  @JsonKey(ignore: true)
  @override
  _$SubmittedCopyWith<_Submitted> get copyWith =>
      __$SubmittedCopyWithImpl<_Submitted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changedLicensePlate(String input),
    @required TResult changedLabel(String input),
    @required TResult changedColor(VehicleColor input),
    @required TResult changedVehicleType(VehicleType input),
    @required TResult changedObservations(String input),
    @required TResult changedOwnerName(String input),
    @required TResult changedOwnerPhone(String input),
    @required TResult changedOwnerCpf(String input),
    @required
        TResult submitted(Future<bool> Function(BuildContext) confirmSubmit,
            BuildContext context),
  }) {
    assert(changedLicensePlate != null);
    assert(changedLabel != null);
    assert(changedColor != null);
    assert(changedVehicleType != null);
    assert(changedObservations != null);
    assert(changedOwnerName != null);
    assert(changedOwnerPhone != null);
    assert(changedOwnerCpf != null);
    assert(submitted != null);
    return submitted(confirmSubmit, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changedLicensePlate(String input),
    TResult changedLabel(String input),
    TResult changedColor(VehicleColor input),
    TResult changedVehicleType(VehicleType input),
    TResult changedObservations(String input),
    TResult changedOwnerName(String input),
    TResult changedOwnerPhone(String input),
    TResult changedOwnerCpf(String input),
    TResult submitted(Future<bool> Function(BuildContext) confirmSubmit,
        BuildContext context),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (submitted != null) {
      return submitted(confirmSubmit, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changedLicensePlate(_ChangedLicensePlate value),
    @required TResult changedLabel(_ChangedLabel value),
    @required TResult changedColor(_ChangedColor value),
    @required TResult changedVehicleType(_ChangedVehicleType value),
    @required TResult changedObservations(_ChangedObservations value),
    @required TResult changedOwnerName(_ChangedOwnerName value),
    @required TResult changedOwnerPhone(_ChangedOwnerPhone value),
    @required TResult changedOwnerCpf(_ChangedOwnerCpf value),
    @required TResult submitted(_Submitted value),
  }) {
    assert(changedLicensePlate != null);
    assert(changedLabel != null);
    assert(changedColor != null);
    assert(changedVehicleType != null);
    assert(changedObservations != null);
    assert(changedOwnerName != null);
    assert(changedOwnerPhone != null);
    assert(changedOwnerCpf != null);
    assert(submitted != null);
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changedLicensePlate(_ChangedLicensePlate value),
    TResult changedLabel(_ChangedLabel value),
    TResult changedColor(_ChangedColor value),
    TResult changedVehicleType(_ChangedVehicleType value),
    TResult changedObservations(_ChangedObservations value),
    TResult changedOwnerName(_ChangedOwnerName value),
    TResult changedOwnerPhone(_ChangedOwnerPhone value),
    TResult changedOwnerCpf(_ChangedOwnerCpf value),
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

abstract class _Submitted implements CheckInEvent {
  const factory _Submitted(Future<bool> Function(BuildContext) confirmSubmit,
      BuildContext context) = _$_Submitted;

  Future<bool> Function(BuildContext) get confirmSubmit;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$SubmittedCopyWith<_Submitted> get copyWith;
}

/// @nodoc
class _$CheckInStateTearOff {
  const _$CheckInStateTearOff();

// ignore: unused_element
  _CheckInState call(
      {@required
          ParkedVehicle vehicle,
      @required
          bool showErrorMessages,
      @required
          bool isSubmitting,
      @required
          Option<Either<ParkingFailure, Unit>> saveFailureOrSuccessOption}) {
    return _CheckInState(
      vehicle: vehicle,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CheckInState = _$CheckInStateTearOff();

/// @nodoc
mixin _$CheckInState {
  ParkedVehicle get vehicle;
  bool get showErrorMessages;
  bool get isSubmitting;
  Option<Either<ParkingFailure, Unit>> get saveFailureOrSuccessOption;

  @JsonKey(ignore: true)
  $CheckInStateCopyWith<CheckInState> get copyWith;
}

/// @nodoc
abstract class $CheckInStateCopyWith<$Res> {
  factory $CheckInStateCopyWith(
          CheckInState value, $Res Function(CheckInState) then) =
      _$CheckInStateCopyWithImpl<$Res>;
  $Res call(
      {ParkedVehicle vehicle,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<ParkingFailure, Unit>> saveFailureOrSuccessOption});

  $ParkedVehicleCopyWith<$Res> get vehicle;
}

/// @nodoc
class _$CheckInStateCopyWithImpl<$Res> implements $CheckInStateCopyWith<$Res> {
  _$CheckInStateCopyWithImpl(this._value, this._then);

  final CheckInState _value;
  // ignore: unused_field
  final $Res Function(CheckInState) _then;

  @override
  $Res call({
    Object vehicle = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      vehicle: vehicle == freezed ? _value.vehicle : vehicle as ParkedVehicle,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<ParkingFailure, Unit>>,
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
abstract class _$CheckInStateCopyWith<$Res>
    implements $CheckInStateCopyWith<$Res> {
  factory _$CheckInStateCopyWith(
          _CheckInState value, $Res Function(_CheckInState) then) =
      __$CheckInStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {ParkedVehicle vehicle,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<ParkingFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $ParkedVehicleCopyWith<$Res> get vehicle;
}

/// @nodoc
class __$CheckInStateCopyWithImpl<$Res> extends _$CheckInStateCopyWithImpl<$Res>
    implements _$CheckInStateCopyWith<$Res> {
  __$CheckInStateCopyWithImpl(
      _CheckInState _value, $Res Function(_CheckInState) _then)
      : super(_value, (v) => _then(v as _CheckInState));

  @override
  _CheckInState get _value => super._value as _CheckInState;

  @override
  $Res call({
    Object vehicle = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_CheckInState(
      vehicle: vehicle == freezed ? _value.vehicle : vehicle as ParkedVehicle,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<ParkingFailure, Unit>>,
    ));
  }
}

@Implements(ValidationFormState)

/// @nodoc
class _$_CheckInState implements _CheckInState {
  const _$_CheckInState(
      {@required this.vehicle,
      @required this.showErrorMessages,
      @required this.isSubmitting,
      @required this.saveFailureOrSuccessOption})
      : assert(vehicle != null),
        assert(showErrorMessages != null),
        assert(isSubmitting != null),
        assert(saveFailureOrSuccessOption != null);

  @override
  final ParkedVehicle vehicle;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<ParkingFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'CheckInState(vehicle: $vehicle, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CheckInState &&
            (identical(other.vehicle, vehicle) ||
                const DeepCollectionEquality()
                    .equals(other.vehicle, vehicle)) &&
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
                    saveFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(vehicle) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$CheckInStateCopyWith<_CheckInState> get copyWith =>
      __$CheckInStateCopyWithImpl<_CheckInState>(this, _$identity);
}

abstract class _CheckInState implements CheckInState, ValidationFormState {
  const factory _CheckInState(
      {@required
          ParkedVehicle vehicle,
      @required
          bool showErrorMessages,
      @required
          bool isSubmitting,
      @required
          Option<Either<ParkingFailure, Unit>>
              saveFailureOrSuccessOption}) = _$_CheckInState;

  @override
  ParkedVehicle get vehicle;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<ParkingFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$CheckInStateCopyWith<_CheckInState> get copyWith;
}
