import 'package:freezed_annotation/freezed_annotation.dart';

part 'address.freezed.dart';

@freezed
abstract class Address with _$Address {
  const factory Address({
    @required String street,
    @required String number,
    @required String cep,
    @required String city,
    @required String uf,
  }) = _Address;

  factory Address.empty() => Address(street: '', cep: '', city: '', number: '', uf: '');
}
