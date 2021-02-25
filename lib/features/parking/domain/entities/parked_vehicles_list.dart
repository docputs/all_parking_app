import 'package:all_parking/features/parking/domain/entities/parked_vehicle.dart';
import 'package:all_parking/utils/pure_date.dart';
import 'package:kt_dart/kt.dart';

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
