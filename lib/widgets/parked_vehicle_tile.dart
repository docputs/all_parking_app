import 'package:all_parking/features/parking/domain/entities/parked_vehicle.dart';
import 'package:all_parking/res/constants.dart';
import 'package:all_parking/widgets/vehicle_color_display.dart';
import 'package:flutter/material.dart';

import 'default_list_tile.dart';

class ParkedVehicleTile extends StatelessWidget {
  final ParkedVehicle vehicle;

  const ParkedVehicleTile(this.vehicle, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultListTile(
      title: vehicle.title,
      subtitle: vehicle.licensePlate,
      leading: VehicleColorDisplay(vehicle.color),
      trailing: Icon(Icons.arrow_forward_ios, size: 18),
      onTap: () => Navigator.of(context).pushNamed(Constants.parkedVehicleDetailsRoute, arguments: vehicle),
    );
  }
}
