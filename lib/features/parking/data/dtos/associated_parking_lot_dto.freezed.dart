// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'associated_parking_lot_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
AssociatedParkingLotDTO _$AssociatedParkingLotDTOFromJson(
    Map<String, dynamic> json) {
  return _AssociatedParkingLotDTO.fromJson(json);
}

/// @nodoc
class _$AssociatedParkingLotDTOTearOff {
  const _$AssociatedParkingLotDTOTearOff();

// ignore: unused_element
  _AssociatedParkingLotDTO call({@required String id, @required String title}) {
    return _AssociatedParkingLotDTO(
      id: id,
      title: title,
    );
  }

// ignore: unused_element
  AssociatedParkingLotDTO fromJson(Map<String, Object> json) {
    return AssociatedParkingLotDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $AssociatedParkingLotDTO = _$AssociatedParkingLotDTOTearOff();

/// @nodoc
mixin _$AssociatedParkingLotDTO {
  String get id;
  String get title;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $AssociatedParkingLotDTOCopyWith<AssociatedParkingLotDTO> get copyWith;
}

/// @nodoc
abstract class $AssociatedParkingLotDTOCopyWith<$Res> {
  factory $AssociatedParkingLotDTOCopyWith(AssociatedParkingLotDTO value,
          $Res Function(AssociatedParkingLotDTO) then) =
      _$AssociatedParkingLotDTOCopyWithImpl<$Res>;
  $Res call({String id, String title});
}

/// @nodoc
class _$AssociatedParkingLotDTOCopyWithImpl<$Res>
    implements $AssociatedParkingLotDTOCopyWith<$Res> {
  _$AssociatedParkingLotDTOCopyWithImpl(this._value, this._then);

  final AssociatedParkingLotDTO _value;
  // ignore: unused_field
  final $Res Function(AssociatedParkingLotDTO) _then;

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
abstract class _$AssociatedParkingLotDTOCopyWith<$Res>
    implements $AssociatedParkingLotDTOCopyWith<$Res> {
  factory _$AssociatedParkingLotDTOCopyWith(_AssociatedParkingLotDTO value,
          $Res Function(_AssociatedParkingLotDTO) then) =
      __$AssociatedParkingLotDTOCopyWithImpl<$Res>;
  @override
  $Res call({String id, String title});
}

/// @nodoc
class __$AssociatedParkingLotDTOCopyWithImpl<$Res>
    extends _$AssociatedParkingLotDTOCopyWithImpl<$Res>
    implements _$AssociatedParkingLotDTOCopyWith<$Res> {
  __$AssociatedParkingLotDTOCopyWithImpl(_AssociatedParkingLotDTO _value,
      $Res Function(_AssociatedParkingLotDTO) _then)
      : super(_value, (v) => _then(v as _AssociatedParkingLotDTO));

  @override
  _AssociatedParkingLotDTO get _value =>
      super._value as _AssociatedParkingLotDTO;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
  }) {
    return _then(_AssociatedParkingLotDTO(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_AssociatedParkingLotDTO extends _AssociatedParkingLotDTO {
  _$_AssociatedParkingLotDTO({@required this.id, @required this.title})
      : assert(id != null),
        assert(title != null),
        super._();

  factory _$_AssociatedParkingLotDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_AssociatedParkingLotDTOFromJson(json);

  @override
  final String id;
  @override
  final String title;

  @override
  String toString() {
    return 'AssociatedParkingLotDTO(id: $id, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AssociatedParkingLotDTO &&
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
  _$AssociatedParkingLotDTOCopyWith<_AssociatedParkingLotDTO> get copyWith =>
      __$AssociatedParkingLotDTOCopyWithImpl<_AssociatedParkingLotDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AssociatedParkingLotDTOToJson(this);
  }
}

abstract class _AssociatedParkingLotDTO extends AssociatedParkingLotDTO {
  _AssociatedParkingLotDTO._() : super._();
  factory _AssociatedParkingLotDTO(
      {@required String id,
      @required String title}) = _$_AssociatedParkingLotDTO;

  factory _AssociatedParkingLotDTO.fromJson(Map<String, dynamic> json) =
      _$_AssociatedParkingLotDTO.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$AssociatedParkingLotDTOCopyWith<_AssociatedParkingLotDTO> get copyWith;
}
