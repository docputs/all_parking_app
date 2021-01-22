import 'package:all_parking/features/parking/domain/entities/parking_lot.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_dto.freezed.dart';
part 'address_dto.g.dart';

@freezed
abstract class AddressDTO implements _$AddressDTO {
  const AddressDTO._();

  const factory AddressDTO({
    @required String street,
    @required String cep,
    @required String number,
    @required String city,
    @required String uf,
  }) = _AddressDTO;

  factory AddressDTO.fromJson(Map<String, dynamic> json) => _$AddressDTOFromJson(json);

  factory AddressDTO.fromDomain(Address model) => AddressDTO(
        street: model.street,
        cep: model.cep,
        number: model.number,
        city: model.city,
        uf: model.uf,
      );

  Address toDomain() => Address(
        street: street,
        cep: cep,
        city: city,
        number: number,
        uf: uf,
      );
}
