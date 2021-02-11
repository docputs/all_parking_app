import 'package:flutter/material.dart';

import '../../domain/entities/parked_vehicle.dart';

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
        return Color(0xFFC0C0C0);
        break;
      case VehicleColor.brown:
        return Colors.brown;
        break;
      case VehicleColor.yellow:
        return Colors.yellow;
        break;
      case VehicleColor.green:
        return Colors.green;
        break;
      case VehicleColor.white:
        return Colors.white;
        break;
      default:
        return Colors.black;
    }
  }

  static String translate(VehicleColor color) {
    switch (color) {
      case VehicleColor.black:
        return 'Preto';
        break;
      case VehicleColor.red:
        return 'Vermelho';
        break;
      case VehicleColor.blue:
        return 'Azul';
        break;
      case VehicleColor.gray:
        return 'Cinza';
        break;
      case VehicleColor.silver:
        return 'Prata';
        break;
      case VehicleColor.brown:
        return 'Marrom';
        break;
      case VehicleColor.yellow:
        return 'Amarelo';
        break;
      case VehicleColor.green:
        return 'Verde';
        break;
      case VehicleColor.white:
        return 'Branco';
        break;
      default:
        return 'Cor';
    }
  }
}
