import 'package:flutter/material.dart';

import '../features/parking/core/util/vehicle_color_converter.dart';
import '../features/parking/domain/entities/parked_vehicle.dart';
import '../res/constants.dart';
import '../res/theme.dart';

class VehicleColorDisplay extends StatelessWidget {
  final VehicleColor color;
  final Size size;

  const VehicleColorDisplay(this.color, {Key key, this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size?.width ?? 42,
      height: size?.height ?? 42,
      decoration: BoxDecoration(
        color: VehicleColorConverter.convert(color),
        borderRadius: Constants.defaultBorderRadius,
        border: color == VehicleColor.white ? Border.all(color: AppColors.textColor) : null,
      ),
    );
  }
}
