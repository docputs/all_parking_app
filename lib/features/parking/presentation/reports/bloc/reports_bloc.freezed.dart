// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'reports_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ReportsEventTearOff {
  const _$ReportsEventTearOff();

// ignore: unused_element
  _Initialized initialized(ParkingLot parkingLot) {
    return _Initialized(
      parkingLot,
    );
  }

// ignore: unused_element
  _DateSelected dateSelected(DateTime dateTime) {
    return _DateSelected(
      dateTime,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ReportsEvent = _$ReportsEventTearOff();

/// @nodoc
mixin _$ReportsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(ParkingLot parkingLot),
    @required TResult dateSelected(DateTime dateTime),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(ParkingLot parkingLot),
    TResult dateSelected(DateTime dateTime),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult dateSelected(_DateSelected value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult dateSelected(_DateSelected value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ReportsEventCopyWith<$Res> {
  factory $ReportsEventCopyWith(
          ReportsEvent value, $Res Function(ReportsEvent) then) =
      _$ReportsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReportsEventCopyWithImpl<$Res> implements $ReportsEventCopyWith<$Res> {
  _$ReportsEventCopyWithImpl(this._value, this._then);

  final ReportsEvent _value;
  // ignore: unused_field
  final $Res Function(ReportsEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({ParkingLot parkingLot});

  $ParkingLotCopyWith<$Res> get parkingLot;
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res> extends _$ReportsEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object parkingLot = freezed,
  }) {
    return _then(_Initialized(
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
class _$_Initialized implements _Initialized {
  const _$_Initialized(this.parkingLot) : assert(parkingLot != null);

  @override
  final ParkingLot parkingLot;

  @override
  String toString() {
    return 'ReportsEvent.initialized(parkingLot: $parkingLot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.parkingLot, parkingLot) ||
                const DeepCollectionEquality()
                    .equals(other.parkingLot, parkingLot)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(parkingLot);

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(ParkingLot parkingLot),
    @required TResult dateSelected(DateTime dateTime),
  }) {
    assert(initialized != null);
    assert(dateSelected != null);
    return initialized(parkingLot);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(ParkingLot parkingLot),
    TResult dateSelected(DateTime dateTime),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(parkingLot);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult dateSelected(_DateSelected value),
  }) {
    assert(initialized != null);
    assert(dateSelected != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult dateSelected(_DateSelected value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements ReportsEvent {
  const factory _Initialized(ParkingLot parkingLot) = _$_Initialized;

  ParkingLot get parkingLot;
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith;
}

/// @nodoc
abstract class _$DateSelectedCopyWith<$Res> {
  factory _$DateSelectedCopyWith(
          _DateSelected value, $Res Function(_DateSelected) then) =
      __$DateSelectedCopyWithImpl<$Res>;
  $Res call({DateTime dateTime});
}

/// @nodoc
class __$DateSelectedCopyWithImpl<$Res> extends _$ReportsEventCopyWithImpl<$Res>
    implements _$DateSelectedCopyWith<$Res> {
  __$DateSelectedCopyWithImpl(
      _DateSelected _value, $Res Function(_DateSelected) _then)
      : super(_value, (v) => _then(v as _DateSelected));

  @override
  _DateSelected get _value => super._value as _DateSelected;

  @override
  $Res call({
    Object dateTime = freezed,
  }) {
    return _then(_DateSelected(
      dateTime == freezed ? _value.dateTime : dateTime as DateTime,
    ));
  }
}

/// @nodoc
class _$_DateSelected implements _DateSelected {
  const _$_DateSelected(this.dateTime) : assert(dateTime != null);

  @override
  final DateTime dateTime;

  @override
  String toString() {
    return 'ReportsEvent.dateSelected(dateTime: $dateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DateSelected &&
            (identical(other.dateTime, dateTime) ||
                const DeepCollectionEquality()
                    .equals(other.dateTime, dateTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(dateTime);

  @JsonKey(ignore: true)
  @override
  _$DateSelectedCopyWith<_DateSelected> get copyWith =>
      __$DateSelectedCopyWithImpl<_DateSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(ParkingLot parkingLot),
    @required TResult dateSelected(DateTime dateTime),
  }) {
    assert(initialized != null);
    assert(dateSelected != null);
    return dateSelected(dateTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(ParkingLot parkingLot),
    TResult dateSelected(DateTime dateTime),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (dateSelected != null) {
      return dateSelected(dateTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult dateSelected(_DateSelected value),
  }) {
    assert(initialized != null);
    assert(dateSelected != null);
    return dateSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult dateSelected(_DateSelected value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (dateSelected != null) {
      return dateSelected(this);
    }
    return orElse();
  }
}

abstract class _DateSelected implements ReportsEvent {
  const factory _DateSelected(DateTime dateTime) = _$_DateSelected;

  DateTime get dateTime;
  @JsonKey(ignore: true)
  _$DateSelectedCopyWith<_DateSelected> get copyWith;
}

/// @nodoc
class _$ReportsStateTearOff {
  const _$ReportsStateTearOff();

// ignore: unused_element
  _Initial initial({@required DateTime selectedDate}) {
    return _Initial(
      selectedDate: selectedDate,
    );
  }

// ignore: unused_element
  _ReportsState call(
      {@required DateTime selectedDate, @required ReportsViewModel viewModel}) {
    return _ReportsState(
      selectedDate: selectedDate,
      viewModel: viewModel,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ReportsState = _$ReportsStateTearOff();

/// @nodoc
mixin _$ReportsState {
  DateTime get selectedDate;

  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(DateTime selectedDate, ReportsViewModel viewModel), {
    @required TResult initial(DateTime selectedDate),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(DateTime selectedDate, ReportsViewModel viewModel), {
    TResult initial(DateTime selectedDate),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(_ReportsState value), {
    @required TResult initial(_Initial value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(_ReportsState value), {
    TResult initial(_Initial value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $ReportsStateCopyWith<ReportsState> get copyWith;
}

/// @nodoc
abstract class $ReportsStateCopyWith<$Res> {
  factory $ReportsStateCopyWith(
          ReportsState value, $Res Function(ReportsState) then) =
      _$ReportsStateCopyWithImpl<$Res>;
  $Res call({DateTime selectedDate});
}

/// @nodoc
class _$ReportsStateCopyWithImpl<$Res> implements $ReportsStateCopyWith<$Res> {
  _$ReportsStateCopyWithImpl(this._value, this._then);

  final ReportsState _value;
  // ignore: unused_field
  final $Res Function(ReportsState) _then;

  @override
  $Res call({
    Object selectedDate = freezed,
  }) {
    return _then(_value.copyWith(
      selectedDate: selectedDate == freezed
          ? _value.selectedDate
          : selectedDate as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> implements $ReportsStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call({DateTime selectedDate});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$ReportsStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object selectedDate = freezed,
  }) {
    return _then(_Initial(
      selectedDate: selectedDate == freezed
          ? _value.selectedDate
          : selectedDate as DateTime,
    ));
  }
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial({@required this.selectedDate})
      : assert(selectedDate != null);

  @override
  final DateTime selectedDate;

  @override
  String toString() {
    return 'ReportsState.initial(selectedDate: $selectedDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initial &&
            (identical(other.selectedDate, selectedDate) ||
                const DeepCollectionEquality()
                    .equals(other.selectedDate, selectedDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(selectedDate);

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(DateTime selectedDate, ReportsViewModel viewModel), {
    @required TResult initial(DateTime selectedDate),
  }) {
    assert(initial != null);
    assert($default != null);
    return initial(selectedDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(DateTime selectedDate, ReportsViewModel viewModel), {
    TResult initial(DateTime selectedDate),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(selectedDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(_ReportsState value), {
    @required TResult initial(_Initial value),
  }) {
    assert(initial != null);
    assert($default != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(_ReportsState value), {
    TResult initial(_Initial value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ReportsState {
  const factory _Initial({@required DateTime selectedDate}) = _$_Initial;

  @override
  DateTime get selectedDate;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith;
}

/// @nodoc
abstract class _$ReportsStateCopyWith<$Res>
    implements $ReportsStateCopyWith<$Res> {
  factory _$ReportsStateCopyWith(
          _ReportsState value, $Res Function(_ReportsState) then) =
      __$ReportsStateCopyWithImpl<$Res>;
  @override
  $Res call({DateTime selectedDate, ReportsViewModel viewModel});
}

/// @nodoc
class __$ReportsStateCopyWithImpl<$Res> extends _$ReportsStateCopyWithImpl<$Res>
    implements _$ReportsStateCopyWith<$Res> {
  __$ReportsStateCopyWithImpl(
      _ReportsState _value, $Res Function(_ReportsState) _then)
      : super(_value, (v) => _then(v as _ReportsState));

  @override
  _ReportsState get _value => super._value as _ReportsState;

  @override
  $Res call({
    Object selectedDate = freezed,
    Object viewModel = freezed,
  }) {
    return _then(_ReportsState(
      selectedDate: selectedDate == freezed
          ? _value.selectedDate
          : selectedDate as DateTime,
      viewModel: viewModel == freezed
          ? _value.viewModel
          : viewModel as ReportsViewModel,
    ));
  }
}

/// @nodoc
class _$_ReportsState implements _ReportsState {
  const _$_ReportsState({@required this.selectedDate, @required this.viewModel})
      : assert(selectedDate != null),
        assert(viewModel != null);

  @override
  final DateTime selectedDate;
  @override
  final ReportsViewModel viewModel;

  @override
  String toString() {
    return 'ReportsState(selectedDate: $selectedDate, viewModel: $viewModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReportsState &&
            (identical(other.selectedDate, selectedDate) ||
                const DeepCollectionEquality()
                    .equals(other.selectedDate, selectedDate)) &&
            (identical(other.viewModel, viewModel) ||
                const DeepCollectionEquality()
                    .equals(other.viewModel, viewModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(selectedDate) ^
      const DeepCollectionEquality().hash(viewModel);

  @JsonKey(ignore: true)
  @override
  _$ReportsStateCopyWith<_ReportsState> get copyWith =>
      __$ReportsStateCopyWithImpl<_ReportsState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(DateTime selectedDate, ReportsViewModel viewModel), {
    @required TResult initial(DateTime selectedDate),
  }) {
    assert(initial != null);
    assert($default != null);
    return $default(selectedDate, viewModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(DateTime selectedDate, ReportsViewModel viewModel), {
    TResult initial(DateTime selectedDate),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(selectedDate, viewModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(_ReportsState value), {
    @required TResult initial(_Initial value),
  }) {
    assert(initial != null);
    assert($default != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(_ReportsState value), {
    TResult initial(_Initial value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _ReportsState implements ReportsState {
  const factory _ReportsState(
      {@required DateTime selectedDate,
      @required ReportsViewModel viewModel}) = _$_ReportsState;

  @override
  DateTime get selectedDate;
  ReportsViewModel get viewModel;
  @override
  @JsonKey(ignore: true)
  _$ReportsStateCopyWith<_ReportsState> get copyWith;
}
