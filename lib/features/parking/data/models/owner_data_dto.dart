import 'package:all_parking/features/parking/domain/entities/owner_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'owner_data_dto.freezed.dart';
part 'owner_data_dto.g.dart';

@freezed
abstract class OwnerDataDTO implements _$OwnerDataDTO {
  const OwnerDataDTO._();

  const factory OwnerDataDTO({
    @required String name,
    @required String phoneNumber,
    @required String cpf,
  }) = _OwnerDataDTO;

  factory OwnerDataDTO.fromJson(Map<String, dynamic> json) => _$OwnerDataDTOFromJson(json);

  factory OwnerDataDTO.fromDomain(OwnerData model) {
    if (model == null || [model.name, model.phoneNumber, model.cpf].every((element) => element.isEmpty)) return null;
    return OwnerDataDTO(
      name: model.name,
      phoneNumber: model.phoneNumber,
      cpf: model.cpf,
    );
  }

  OwnerData toDomain() => OwnerData(name: name, phoneNumber: phoneNumber, cpf: cpf);
}
