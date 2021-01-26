import 'package:all_parking/features/parking/domain/entities/parked_vehicle.dart';
import 'package:all_parking/utils/car_color_converter.dart';
import 'package:flutter/material.dart';

class ParkedVehicleTile extends StatelessWidget {
  final ParkedVehicle vehicle;

  const ParkedVehicleTile(this.vehicle, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      title: Text(vehicle.title),
      subtitle: Text(vehicle.licensePlate),
      leading: CircleAvatar(backgroundColor: VehicleColorConverter.convert(vehicle.color)),
      trailing: Icon(Icons.arrow_forward_ios, size: 18),
    );
  }
}
