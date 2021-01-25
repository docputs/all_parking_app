import 'package:all_parking/features/parking/domain/entities/parked_vehicle.dart';
import 'package:flutter/material.dart';

class VehicleColorConverter {
  static Color convert(VehicleColor color) {
    switch (color) {
      case VehicleColor.black:
        return Colors.black;
        break;
      case VehicleColor.red:
        return Colors.red.shade700;
        break;
      case VehicleColor.blue:
        return Colors.blue;
        break;
      case VehicleColor.gray:
        return Colors.black54;
        break;
      case VehicleColor.silver:
        return Colors.black26;
        break;
      default:
        return Colors.black;
    }
  }
}
