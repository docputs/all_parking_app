import 'package:all_parking/features/parking/domain/entities/parked_vehicle.dart';
import 'package:all_parking/features/parking/domain/entities/parking_lot.dart';
import 'package:all_parking/utils/pure_date.dart';
import 'package:kt_dart/kt.dart';

class ReportsViewModel {
  final double pricePerHour;
  final InactiveParkedVehicles parkedVehicles;

  ReportsViewModel(ParkingLot parkingLot)
      : parkedVehicles = InactiveParkedVehicles(parkingLot.parkedVehicles),
        pricePerHour = parkingLot.pricePerHour;

  double calculateEarnings(KtList<ParkedVehicle> vehicles) {
    if (vehicles.isEmpty()) return 0.0;
    final amountToPayList = vehicles.map((vehicle) => vehicle.calculateAmountToPay(pricePerHour));
    return amountToPayList.reduce((acc, amount) => acc + amount);
  }

  double todaysEarnings() => calculateEarnings(parkedVehicles.fromToday());

  double lastWeekEarnings() => calculateEarnings(parkedVehicles.fromLastWeek());

  double dateEarnings(DateTime dateTime) => calculateEarnings(parkedVehicles.fromDateTime(dateTime));
}

abstract class ParkedVehiclesList {
  KtList<ParkedVehicle> get value;

  KtList<ParkedVehicle> sortByCheckOut([bool descending = true]) {
    return descending ? value.sortedByDescending((vehicle) => vehicle.checkOut) : value.sortedBy((vehicle) => vehicle.checkOut);
  }
}

class ActiveParkedVehicles extends ParkedVehiclesList {
  final KtList<ParkedVehicle> value;

  ActiveParkedVehicles(KtList<ParkedVehicle> list) : value = list.filter((vehicle) => vehicle.isActive);
}

class InactiveParkedVehicles extends ParkedVehiclesList {
  final KtList<ParkedVehicle> value;

  InactiveParkedVehicles(KtList<ParkedVehicle> list) : value = list.filter((vehicle) => !vehicle.isActive);

  KtList<ParkedVehicle> _parkedVehiclesInDuration(Duration duration) {
    final now = DateTime.now();
    final before = now.subtract(duration);
    final sortedParkedVehicles = super.sortByCheckOut();
    return sortedParkedVehicles.takeWhile((vehicle) => vehicle.checkOut.isAfter(before));
  }

  KtList<ParkedVehicle> _parkedVehiclesByDate(DateTime dateTime) => value.filter((vehicle) {
        return PureDate.fromDateTime(vehicle.checkOut) == PureDate.fromDateTime(dateTime);
      });

  KtList<ParkedVehicle> fromLastWeek() => _parkedVehiclesInDuration(const Duration(days: 7));

  KtList<ParkedVehicle> fromToday() => _parkedVehiclesByDate(DateTime.now());

  KtList<ParkedVehicle> fromDateTime(DateTime dateTime) => _parkedVehiclesByDate(dateTime);
}
