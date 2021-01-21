import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/parked_vehicle.dart';

part 'parked_vehicle_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class ParkedVehicleDTO {
  final QRCode id;
  final String title;
  final String licensePlate;
  final VehicleColor color;
  final DateTime checkIn;
  final DateTime checkOut;
  final String observations;

  const ParkedVehicleDTO({
    @required this.id,
    @required this.title,
    @required this.licensePlate,
    @required this.color,
    @required this.checkIn,
    @required this.checkOut,
    @required this.observations,
  });

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is ParkedVehicleDTO &&
        o.id == id &&
        o.title == title &&
        o.licensePlate == licensePlate &&
        o.color == color &&
        o.checkIn == checkIn &&
        o.checkOut == checkOut &&
        o.observations == observations;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        title.hashCode ^
        licensePlate.hashCode ^
        color.hashCode ^
        checkIn.hashCode ^
        checkOut.hashCode ^
        observations.hashCode;
  }

  ParkedVehicleDTO.fromDomain(ParkedVehicle model)
      : this(
          id: model.id,
          title: model.title,
          licensePlate: model.licensePlate,
          color: model.color,
          checkIn: model.checkIn,
          checkOut: model.checkOut,
          observations: model.observations,
        );

  ParkedVehicle toDomain() => ParkedVehicle(
        id: id,
        checkIn: checkIn,
        checkOut: checkOut,
        title: title,
        color: color,
        licensePlate: licensePlate,
        observations: observations,
      );

  factory ParkedVehicleDTO.fromJson(Map<String, dynamic> json) => _$ParkedVehicleDTOFromJson(json);

  Map<String, dynamic> toJson() => _$ParkedVehicleDTOToJson(this);
}
