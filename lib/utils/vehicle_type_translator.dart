import 'package:all_parking/features/parking/domain/entities/parked_vehicle.dart';

class VehicleTypeConverter {
  static String translate(VehicleType type) {
    switch (type) {
      case VehicleType.car:
        return 'Carro';
        break;
      case VehicleType.motorcycle:
        return 'Moto';
        break;
      default:
        return 'Veículo';
    }
  }
}
