import 'package:kt_dart/kt.dart';

import '../../../../../utils/pure_date.dart';
import '../../../domain/entities/parked_vehicle.dart';
import '../../../domain/entities/parking_lot.dart';

class ReportsViewModel {
  final double pricePerHour;
  final InactiveParkedVehicles parkedVehicles;

  ReportsViewModel({KtList<ParkedVehicle> vehicles, ParkingLot parkingLot})
      : parkedVehicles = InactiveParkedVehicles(vehicles),
        pricePerHour = parkingLot.pricePerHour;

  double calculateEarnings(KtList<ParkedVehicle> vehicles) {
    if (vehicles.isEmpty()) return 0.0;
    final amountToPayList = vehicles.map((vehicle) => vehicle.calculateAmountToPay(vehicle.overridenPricePerHour ?? pricePerHour));
    return amountToPayList.reduce((acc, amount) => acc + amount);
  }

  double todaysEarnings() => calculateEarnings(parkedVehicles.fromToday());

  double lastWeekEarnings() => calculateEarnings(parkedVehicles.fromLastWeek());

  double dateEarnings(DateTime dateTime) => calculateEarnings(parkedVehicles.fromDateTime(dateTime));
}

abstract class ParkedVehiclesList {
  KtList<ParkedVehicle> get value;

  const ParkedVehiclesList();

  KtList<ParkedVehicle> sortByCheckOut([bool descending = true]) {
    return descending ? value.sortedByDescending((vehicle) => vehicle.checkOut) : value.sortedBy((vehicle) => vehicle.checkOut);
  }

  bool get isEmpty => value.isEmpty();
}

class ActiveParkedVehicles extends ParkedVehiclesList {
  final KtList<ParkedVehicle> _value;
  KtList<ParkedVehicle> get value => _value;

  const ActiveParkedVehicles(this._value);
}

class InactiveParkedVehicles extends ParkedVehiclesList {
  final KtList<ParkedVehicle> _value;
  KtList<ParkedVehicle> get value => _value;

  const InactiveParkedVehicles(this._value);

  KtList<ParkedVehicle> _parkedVehiclesInDuration(Duration duration) {
    final now = DateTime.now();
    final before = now.subtract(duration);
    final sortedParkedVehicles = super.sortByCheckOut();
    return sortedParkedVehicles.takeWhile((vehicle) => vehicle.checkOut.isAfter(before));
  }

  KtList<ParkedVehicle> _parkedVehiclesByDate(DateTime dateTime) => _value.filter((vehicle) {
        return PureDate.fromDateTime(vehicle.checkOut) == PureDate.fromDateTime(dateTime);
      });

  KtList<ParkedVehicle> fromLastWeek() => _parkedVehiclesInDuration(const Duration(days: 7));

  KtList<ParkedVehicle> fromToday() => _parkedVehiclesByDate(DateTime.now());

  KtList<ParkedVehicle> fromDateTime(DateTime dateTime) => _parkedVehiclesByDate(dateTime);
}
