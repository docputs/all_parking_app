import 'package:all_parking/features/parking/domain/entities/associated_parking_lot.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'associated_parking_lot_dto.freezed.dart';
part 'associated_parking_lot_dto.g.dart';

@freezed
abstract class AssociatedParkingLotDTO implements _$AssociatedParkingLotDTO {
  const AssociatedParkingLotDTO._();

  factory AssociatedParkingLotDTO({
    @required String id,
    @required String title,
  }) = _AssociatedParkingLotDTO;

  factory AssociatedParkingLotDTO.fromJson(Map<String, dynamic> json) => _$AssociatedParkingLotDTOFromJson(json);

  factory AssociatedParkingLotDTO.fromDomain(AssociatedParkingLot model) => AssociatedParkingLotDTO(id: model.id, title: model.title);

  AssociatedParkingLot toDomain() => AssociatedParkingLot(id: id, title: title);
}
