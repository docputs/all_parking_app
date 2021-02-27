import 'package:kt_dart/kt.dart';

import '../../../domain/entities/parked_vehicle.dart';
import '../../../domain/entities/parked_vehicles_list.dart';
import '../../../domain/entities/parking_lot.dart';

class ReportsViewModel {
  final double pricePerHour;
  final InactiveParkedVehicles vehicles;

  ReportsViewModel({this.vehicles, ParkingLot parkingLot}) : pricePerHour = parkingLot.pricePerHour;

  double calculateEarnings(KtList<ParkedVehicle> vehicles) {
    if (vehicles.isEmpty()) return 0.0;
    final amountToPayList = vehicles.map((vehicle) => vehicle.calculateAmountToPay(vehicle.overridenPricePerHour ?? pricePerHour));
    return amountToPayList.reduce((acc, amount) => acc + amount);
  }

  double todaysEarnings() => calculateEarnings(vehicles.fromToday());

  double lastWeekEarnings() => calculateEarnings(vehicles.fromLastWeek());

  double dateEarnings(DateTime dateTime) => calculateEarnings(vehicles.fromDateTime(dateTime));
}
