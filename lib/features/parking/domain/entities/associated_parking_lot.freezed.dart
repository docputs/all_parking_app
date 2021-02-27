// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'associated_parking_lot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AssociatedParkingLotTearOff {
  const _$AssociatedParkingLotTearOff();

// ignore: unused_element
  _AssociatedParkingLot call({@required String id, @required String title}) {
    return _AssociatedParkingLot(
      id: id,
      title: title,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AssociatedParkingLot = _$AssociatedParkingLotTearOff();

/// @nodoc
mixin _$AssociatedParkingLot {
  String get id;
  String get title;

  @JsonKey(ignore: true)
  $AssociatedParkingLotCopyWith<AssociatedParkingLot> get copyWith;
}

/// @nodoc
abstract class $AssociatedParkingLotCopyWith<$Res> {
  factory $AssociatedParkingLotCopyWith(AssociatedParkingLot value,
          $Res Function(AssociatedParkingLot) then) =
      _$AssociatedParkingLotCopyWithImpl<$Res>;
  $Res call({String id, String title});
}

/// @nodoc
class _$AssociatedParkingLotCopyWithImpl<$Res>
    implements $AssociatedParkingLotCopyWith<$Res> {
  _$AssociatedParkingLotCopyWithImpl(this._value, this._then);

  final AssociatedParkingLot _value;
  // ignore: unused_field
  final $Res Function(AssociatedParkingLot) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
    ));
  }
}

/// @nodoc
abstract class _$AssociatedParkingLotCopyWith<$Res>
    implements $AssociatedParkingLotCopyWith<$Res> {
  factory _$AssociatedParkingLotCopyWith(_AssociatedParkingLot value,
          $Res Function(_AssociatedParkingLot) then) =
      __$AssociatedParkingLotCopyWithImpl<$Res>;
  @override
  $Res call({String id, String title});
}

/// @nodoc
class __$AssociatedParkingLotCopyWithImpl<$Res>
    extends _$AssociatedParkingLotCopyWithImpl<$Res>
    implements _$AssociatedParkingLotCopyWith<$Res> {
  __$AssociatedParkingLotCopyWithImpl(
      _AssociatedParkingLot _value, $Res Function(_AssociatedParkingLot) _then)
      : super(_value, (v) => _then(v as _AssociatedParkingLot));

  @override
  _AssociatedParkingLot get _value => super._value as _AssociatedParkingLot;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
  }) {
    return _then(_AssociatedParkingLot(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
    ));
  }
}

/// @nodoc
class _$_AssociatedParkingLot extends _AssociatedParkingLot {
  _$_AssociatedParkingLot({@required this.id, @required this.title})
      : assert(id != null),
        assert(title != null),
        super._();

  @override
  final String id;
  @override
  final String title;

  @override
  String toString() {
    return 'AssociatedParkingLot(id: $id, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AssociatedParkingLot &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title);

  @JsonKey(ignore: true)
  @override
  _$AssociatedParkingLotCopyWith<_AssociatedParkingLot> get copyWith =>
      __$AssociatedParkingLotCopyWithImpl<_AssociatedParkingLot>(
          this, _$identity);
}

abstract class _AssociatedParkingLot extends AssociatedParkingLot {
  _AssociatedParkingLot._() : super._();
  factory _AssociatedParkingLot({@required String id, @required String title}) =
      _$_AssociatedParkingLot;

  @override
  String get id;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$AssociatedParkingLotCopyWith<_AssociatedParkingLot> get copyWith;
}
