import 'package:all_parking/features/parking/core/util/vehicle_color_converter.dart';
import 'package:all_parking/features/parking/domain/entities/parked_vehicle.dart';
import 'package:all_parking/res/constants.dart';
import 'package:all_parking/res/theme.dart';
import 'package:flutter/material.dart';

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
