import 'package:all_parking/features/qr_code/domain/entities/qr_code.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'qr_code_dto.freezed.dart';
part 'qr_code_dto.g.dart';

@freezed
abstract class QRCodeDTO implements _$QRCodeDTO {
  const QRCodeDTO._();

  factory QRCodeDTO(String value) = _QRCodeDTO;

  factory QRCodeDTO.fromJson(Map<String, dynamic> json) => _$QRCodeDTOFromJson(json);

  factory QRCodeDTO.fromDomain(QRCode model) => QRCodeDTO(model.value);

  QRCode toDomain() => QRCode(value);
}
