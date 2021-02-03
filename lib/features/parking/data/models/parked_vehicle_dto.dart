import 'package:all_parking/features/parking/data/models/owner_data_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/parked_vehicle.dart';

part 'parked_vehicle_dto.freezed.dart';
part 'parked_vehicle_dto.g.dart';

@freezed
abstract class ParkedVehicleDTO implements _$ParkedVehicleDTO {
  const ParkedVehicleDTO._();

  @JsonSerializable(explicitToJson: true)
  const factory ParkedVehicleDTO({
    @required QRCode id,
    @required String title,
    @required String licensePlate,
    @required VehicleColor color,
    @required DateTime checkIn,
    @required DateTime checkOut,
    @required VehicleType type,
    @required String observations,
    @JsonKey(includeIfNull: false) OwnerDataDTO ownerData,
  }) = _ParkedVehicleDTO;

  factory ParkedVehicleDTO.fromDomain(ParkedVehicle model) => ParkedVehicleDTO(
        id: model.id,
        title: model.title,
        licensePlate: model.licensePlate,
        color: model.color,
        checkIn: model.checkIn,
        checkOut: model.checkOut,
        type: model.type,
        observations: model.observations,
        ownerData: OwnerDataDTO.fromDomain(model.ownerData),
      );

  ParkedVehicle toDomain() => ParkedVehicle(
        id: id,
        checkIn: checkIn,
        checkOut: checkOut,
        title: title,
        color: color,
        licensePlate: licensePlate,
        observations: observations,
        type: type,
        ownerData: ownerData?.toDomain(),
      );

  factory ParkedVehicleDTO.fromJson(Map<String, dynamic> json) => _$ParkedVehicleDTOFromJson(json);
}
