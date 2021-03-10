// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'owner_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$OwnerDataTearOff {
  const _$OwnerDataTearOff();

// ignore: unused_element
  _OwnerData call(
      {@required String name,
      @required String phoneNumber,
      @required String cpf}) {
    return _OwnerData(
      name: name,
      phoneNumber: phoneNumber,
      cpf: cpf,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $OwnerData = _$OwnerDataTearOff();

/// @nodoc
mixin _$OwnerData {
  String get name;
  String get phoneNumber;
  String get cpf;

  @JsonKey(ignore: true)
  $OwnerDataCopyWith<OwnerData> get copyWith;
}

/// @nodoc
abstract class $OwnerDataCopyWith<$Res> {
  factory $OwnerDataCopyWith(OwnerData value, $Res Function(OwnerData) then) =
      _$OwnerDataCopyWithImpl<$Res>;
  $Res call({String name, String phoneNumber, String cpf});
}

/// @nodoc
class _$OwnerDataCopyWithImpl<$Res> implements $OwnerDataCopyWith<$Res> {
  _$OwnerDataCopyWithImpl(this._value, this._then);

  final OwnerData _value;
  // ignore: unused_field
  final $Res Function(OwnerData) _then;

  @override
  $Res call({
    Object name = freezed,
    Object phoneNumber = freezed,
    Object cpf = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
      cpf: cpf == freezed ? _value.cpf : cpf as String,
    ));
  }
}

/// @nodoc
abstract class _$OwnerDataCopyWith<$Res> implements $OwnerDataCopyWith<$Res> {
  factory _$OwnerDataCopyWith(
          _OwnerData value, $Res Function(_OwnerData) then) =
      __$OwnerDataCopyWithImpl<$Res>;
  @override
  $Res call({String name, String phoneNumber, String cpf});
}

/// @nodoc
class __$OwnerDataCopyWithImpl<$Res> extends _$OwnerDataCopyWithImpl<$Res>
    implements _$OwnerDataCopyWith<$Res> {
  __$OwnerDataCopyWithImpl(_OwnerData _value, $Res Function(_OwnerData) _then)
      : super(_value, (v) => _then(v as _OwnerData));

  @override
  _OwnerData get _value => super._value as _OwnerData;

  @override
  $Res call({
    Object name = freezed,
    Object phoneNumber = freezed,
    Object cpf = freezed,
  }) {
    return _then(_OwnerData(
      name: name == freezed ? _value.name : name as String,
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
      cpf: cpf == freezed ? _value.cpf : cpf as String,
    ));
  }
}

/// @nodoc
class _$_OwnerData implements _OwnerData {
  const _$_OwnerData(
      {@required this.name, @required this.phoneNumber, @required this.cpf})
      : assert(name != null),
        assert(phoneNumber != null),
        assert(cpf != null);

  @override
  final String name;
  @override
  final String phoneNumber;
  @override
  final String cpf;

  @override
  String toString() {
    return 'OwnerData(name: $name, phoneNumber: $phoneNumber, cpf: $cpf)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OwnerData &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.cpf, cpf) ||
                const DeepCollectionEquality().equals(other.cpf, cpf)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(cpf);

  @JsonKey(ignore: true)
  @override
  _$OwnerDataCopyWith<_OwnerData> get copyWith =>
      __$OwnerDataCopyWithImpl<_OwnerData>(this, _$identity);
}

abstract class _OwnerData implements OwnerData {
  const factory _OwnerData(
      {@required String name,
      @required String phoneNumber,
      @required String cpf}) = _$_OwnerData;

  @override
  String get name;
  @override
  String get phoneNumber;
  @override
  String get cpf;
  @override
  @JsonKey(ignore: true)
  _$OwnerDataCopyWith<_OwnerData> get copyWith;
}
