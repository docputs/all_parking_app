// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'add_employee_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AddEmployeeEventTearOff {
  const _$AddEmployeeEventTearOff();

// ignore: unused_element
  _ChangedName changedName(String input) {
    return _ChangedName(
      input,
    );
  }

// ignore: unused_element
  _ChangedParkingLot changedParkingLot(ParkingLot parkingLot) {
    return _ChangedParkingLot(
      parkingLot,
    );
  }

// ignore: unused_element
  _Submitted submitted() {
    return const _Submitted();
  }
}

/// @nodoc
// ignore: unused_element
const $AddEmployeeEvent = _$AddEmployeeEventTearOff();

/// @nodoc
mixin _$AddEmployeeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changedName(String input),
    @required TResult changedParkingLot(ParkingLot parkingLot),
    @required TResult submitted(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changedName(String input),
    TResult changedParkingLot(ParkingLot parkingLot),
    TResult submitted(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changedName(_ChangedName value),
    @required TResult changedParkingLot(_ChangedParkingLot value),
    @required TResult submitted(_Submitted value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changedName(_ChangedName value),
    TResult changedParkingLot(_ChangedParkingLot value),
    TResult submitted(_Submitted value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AddEmployeeEventCopyWith<$Res> {
  factory $AddEmployeeEventCopyWith(
          AddEmployeeEvent value, $Res Function(AddEmployeeEvent) then) =
      _$AddEmployeeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddEmployeeEventCopyWithImpl<$Res>
    implements $AddEmployeeEventCopyWith<$Res> {
  _$AddEmployeeEventCopyWithImpl(this._value, this._then);

  final AddEmployeeEvent _value;
  // ignore: unused_field
  final $Res Function(AddEmployeeEvent) _then;
}

/// @nodoc
abstract class _$ChangedNameCopyWith<$Res> {
  factory _$ChangedNameCopyWith(
          _ChangedName value, $Res Function(_ChangedName) then) =
      __$ChangedNameCopyWithImpl<$Res>;
  $Res call({String input});
}

/// @nodoc
class __$ChangedNameCopyWithImpl<$Res>
    extends _$AddEmployeeEventCopyWithImpl<$Res>
    implements _$ChangedNameCopyWith<$Res> {
  __$ChangedNameCopyWithImpl(
      _ChangedName _value, $Res Function(_ChangedName) _then)
      : super(_value, (v) => _then(v as _ChangedName));

  @override
  _ChangedName get _value => super._value as _ChangedName;

  @override
  $Res call({
    Object input = freezed,
  }) {
    return _then(_ChangedName(
      input == freezed ? _value.input : input as String,
    ));
  }
}

/// @nodoc
class _$_ChangedName implements _ChangedName {
  const _$_ChangedName(this.input) : assert(input != null);

  @override
  final String input;

  @override
  String toString() {
    return 'AddEmployeeEvent.changedName(input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangedName &&
            (identical(other.input, input) ||
                const DeepCollectionEquality().equals(other.input, input)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(input);

  @JsonKey(ignore: true)
  @override
  _$ChangedNameCopyWith<_ChangedName> get copyWith =>
      __$ChangedNameCopyWithImpl<_ChangedName>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changedName(String input),
    @required TResult changedParkingLot(ParkingLot parkingLot),
    @required TResult submitted(),
  }) {
    assert(changedName != null);
    assert(changedParkingLot != null);
    assert(submitted != null);
    return changedName(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changedName(String input),
    TResult changedParkingLot(ParkingLot parkingLot),
    TResult submitted(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedName != null) {
      return changedName(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changedName(_ChangedName value),
    @required TResult changedParkingLot(_ChangedParkingLot value),
    @required TResult submitted(_Submitted value),
  }) {
    assert(changedName != null);
    assert(changedParkingLot != null);
    assert(submitted != null);
    return changedName(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changedName(_ChangedName value),
    TResult changedParkingLot(_ChangedParkingLot value),
    TResult submitted(_Submitted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedName != null) {
      return changedName(this);
    }
    return orElse();
  }
}

abstract class _ChangedName implements AddEmployeeEvent {
  const factory _ChangedName(String input) = _$_ChangedName;

  String get input;
  @JsonKey(ignore: true)
  _$ChangedNameCopyWith<_ChangedName> get copyWith;
}

/// @nodoc
abstract class _$ChangedParkingLotCopyWith<$Res> {
  factory _$ChangedParkingLotCopyWith(
          _ChangedParkingLot value, $Res Function(_ChangedParkingLot) then) =
      __$ChangedParkingLotCopyWithImpl<$Res>;
  $Res call({ParkingLot parkingLot});

  $ParkingLotCopyWith<$Res> get parkingLot;
}

/// @nodoc
class __$ChangedParkingLotCopyWithImpl<$Res>
    extends _$AddEmployeeEventCopyWithImpl<$Res>
    implements _$ChangedParkingLotCopyWith<$Res> {
  __$ChangedParkingLotCopyWithImpl(
      _ChangedParkingLot _value, $Res Function(_ChangedParkingLot) _then)
      : super(_value, (v) => _then(v as _ChangedParkingLot));

  @override
  _ChangedParkingLot get _value => super._value as _ChangedParkingLot;

  @override
  $Res call({
    Object parkingLot = freezed,
  }) {
    return _then(_ChangedParkingLot(
      parkingLot == freezed ? _value.parkingLot : parkingLot as ParkingLot,
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
class _$_ChangedParkingLot implements _ChangedParkingLot {
  const _$_ChangedParkingLot(this.parkingLot) : assert(parkingLot != null);

  @override
  final ParkingLot parkingLot;

  @override
  String toString() {
    return 'AddEmployeeEvent.changedParkingLot(parkingLot: $parkingLot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangedParkingLot &&
            (identical(other.parkingLot, parkingLot) ||
                const DeepCollectionEquality()
                    .equals(other.parkingLot, parkingLot)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(parkingLot);

  @JsonKey(ignore: true)
  @override
  _$ChangedParkingLotCopyWith<_ChangedParkingLot> get copyWith =>
      __$ChangedParkingLotCopyWithImpl<_ChangedParkingLot>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult changedName(String input),
    @required TResult changedParkingLot(ParkingLot parkingLot),
    @required TResult submitted(),
  }) {
    assert(changedName != null);
    assert(changedParkingLot != null);
    assert(submitted != null);
    return changedParkingLot(parkingLot);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changedName(String input),
    TResult changedParkingLot(ParkingLot parkingLot),
    TResult submitted(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedParkingLot != null) {
      return changedParkingLot(parkingLot);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult changedName(_ChangedName value),
    @required TResult changedParkingLot(_ChangedParkingLot value),
    @required TResult submitted(_Submitted value),
  }) {
    assert(changedName != null);
    assert(changedParkingLot != null);
    assert(submitted != null);
    return changedParkingLot(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changedName(_ChangedName value),
    TResult changedParkingLot(_ChangedParkingLot value),
    TResult submitted(_Submitted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changedParkingLot != null) {
      return changedParkingLot(this);
    }
    return orElse();
  }
}

abstract class _ChangedParkingLot implements AddEmployeeEvent {
  const factory _ChangedParkingLot(ParkingLot parkingLot) =
      _$_ChangedParkingLot;

  ParkingLot get parkingLot;
  @JsonKey(ignore: true)
  _$ChangedParkingLotCopyWith<_ChangedParkingLot> get copyWith;
}

/// @nodoc
abstract class _$SubmittedCopyWith<$Res> {
  factory _$SubmittedCopyWith(
          _Submitted value, $Res Function(_Submitted) then) =
      __$SubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SubmittedCopyWithImpl<$Res>
    extends _$AddEmployeeEventCopyWithImpl<$Res>
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
    return 'AddEmployeeEvent.submitted()';
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
    @required TResult changedName(String input),
    @required TResult changedParkingLot(ParkingLot parkingLot),
    @required TResult submitted(),
  }) {
    assert(changedName != null);
    assert(changedParkingLot != null);
    assert(submitted != null);
    return submitted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult changedName(String input),
    TResult changedParkingLot(ParkingLot parkingLot),
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
    @required TResult changedName(_ChangedName value),
    @required TResult changedParkingLot(_ChangedParkingLot value),
    @required TResult submitted(_Submitted value),
  }) {
    assert(changedName != null);
    assert(changedParkingLot != null);
    assert(submitted != null);
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult changedName(_ChangedName value),
    TResult changedParkingLot(_ChangedParkingLot value),
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

abstract class _Submitted implements AddEmployeeEvent {
  const factory _Submitted() = _$_Submitted;
}

/// @nodoc
class _$AddEmployeeStateTearOff {
  const _$AddEmployeeStateTearOff();

// ignore: unused_element
  _AddEmployeeState call(
      {@required Employee employee,
      @required bool isSubmitting,
      @required Option<Either<AuthFailure, Unit>> saveFailureOrSuccessOption,
      @required bool showErrorMessages}) {
    return _AddEmployeeState(
      employee: employee,
      isSubmitting: isSubmitting,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
      showErrorMessages: showErrorMessages,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AddEmployeeState = _$AddEmployeeStateTearOff();

/// @nodoc
mixin _$AddEmployeeState {
  Employee get employee;
  bool get isSubmitting;
  Option<Either<AuthFailure, Unit>> get saveFailureOrSuccessOption;
  bool get showErrorMessages;

  @JsonKey(ignore: true)
  $AddEmployeeStateCopyWith<AddEmployeeState> get copyWith;
}

/// @nodoc
abstract class $AddEmployeeStateCopyWith<$Res> {
  factory $AddEmployeeStateCopyWith(
          AddEmployeeState value, $Res Function(AddEmployeeState) then) =
      _$AddEmployeeStateCopyWithImpl<$Res>;
  $Res call(
      {Employee employee,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> saveFailureOrSuccessOption,
      bool showErrorMessages});
}

/// @nodoc
class _$AddEmployeeStateCopyWithImpl<$Res>
    implements $AddEmployeeStateCopyWith<$Res> {
  _$AddEmployeeStateCopyWithImpl(this._value, this._then);

  final AddEmployeeState _value;
  // ignore: unused_field
  final $Res Function(AddEmployeeState) _then;

  @override
  $Res call({
    Object employee = freezed,
    Object isSubmitting = freezed,
    Object saveFailureOrSuccessOption = freezed,
    Object showErrorMessages = freezed,
  }) {
    return _then(_value.copyWith(
      employee: employee == freezed ? _value.employee : employee as Employee,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<AuthFailure, Unit>>,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
    ));
  }
}

/// @nodoc
abstract class _$AddEmployeeStateCopyWith<$Res>
    implements $AddEmployeeStateCopyWith<$Res> {
  factory _$AddEmployeeStateCopyWith(
          _AddEmployeeState value, $Res Function(_AddEmployeeState) then) =
      __$AddEmployeeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Employee employee,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> saveFailureOrSuccessOption,
      bool showErrorMessages});
}

/// @nodoc
class __$AddEmployeeStateCopyWithImpl<$Res>
    extends _$AddEmployeeStateCopyWithImpl<$Res>
    implements _$AddEmployeeStateCopyWith<$Res> {
  __$AddEmployeeStateCopyWithImpl(
      _AddEmployeeState _value, $Res Function(_AddEmployeeState) _then)
      : super(_value, (v) => _then(v as _AddEmployeeState));

  @override
  _AddEmployeeState get _value => super._value as _AddEmployeeState;

  @override
  $Res call({
    Object employee = freezed,
    Object isSubmitting = freezed,
    Object saveFailureOrSuccessOption = freezed,
    Object showErrorMessages = freezed,
  }) {
    return _then(_AddEmployeeState(
      employee: employee == freezed ? _value.employee : employee as Employee,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<AuthFailure, Unit>>,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
    ));
  }
}

@Implements(ValidationFormState)

/// @nodoc
class _$_AddEmployeeState implements _AddEmployeeState {
  const _$_AddEmployeeState(
      {@required this.employee,
      @required this.isSubmitting,
      @required this.saveFailureOrSuccessOption,
      @required this.showErrorMessages})
      : assert(employee != null),
        assert(isSubmitting != null),
        assert(saveFailureOrSuccessOption != null),
        assert(showErrorMessages != null);

  @override
  final Employee employee;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<AuthFailure, Unit>> saveFailureOrSuccessOption;
  @override
  final bool showErrorMessages;

  @override
  String toString() {
    return 'AddEmployeeState(employee: $employee, isSubmitting: $isSubmitting, saveFailureOrSuccessOption: $saveFailureOrSuccessOption, showErrorMessages: $showErrorMessages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddEmployeeState &&
            (identical(other.employee, employee) ||
                const DeepCollectionEquality()
                    .equals(other.employee, employee)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(employee) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption) ^
      const DeepCollectionEquality().hash(showErrorMessages);

  @JsonKey(ignore: true)
  @override
  _$AddEmployeeStateCopyWith<_AddEmployeeState> get copyWith =>
      __$AddEmployeeStateCopyWithImpl<_AddEmployeeState>(this, _$identity);
}

abstract class _AddEmployeeState
    implements AddEmployeeState, ValidationFormState {
  const factory _AddEmployeeState(
      {@required Employee employee,
      @required bool isSubmitting,
      @required Option<Either<AuthFailure, Unit>> saveFailureOrSuccessOption,
      @required bool showErrorMessages}) = _$_AddEmployeeState;

  @override
  Employee get employee;
  @override
  bool get isSubmitting;
  @override
  Option<Either<AuthFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  bool get showErrorMessages;
  @override
  @JsonKey(ignore: true)
  _$AddEmployeeStateCopyWith<_AddEmployeeState> get copyWith;
}
