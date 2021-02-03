import 'package:all_parking/features/parking/core/util/car_color_converter.dart';
import 'package:all_parking/features/parking/domain/entities/parked_vehicle.dart';
import 'package:all_parking/res/constants.dart';
import 'package:all_parking/res/theme.dart';
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
      onTap: () {},
    );
  }
}

class VehicleColorDisplay extends StatelessWidget {
  final VehicleColor color;

  const VehicleColorDisplay(this.color, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 42,
      height: 42,
      decoration: BoxDecoration(
        color: VehicleColorConverter.convert(color),
        borderRadius: Constants.defaultBorderRadius,
        border: color == VehicleColor.white ? Border.all(color: AppColors.textColor) : null,
      ),
    );
  }
}
