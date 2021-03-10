import 'package:flutter/material.dart';

import '../features/parking/domain/entities/parked_vehicle.dart';
import '../res/constants.dart';
import 'default_list_tile.dart';
import 'vehicle_color_display.dart';

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
