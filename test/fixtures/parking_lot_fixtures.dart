import 'package:all_parking/features/parking/domain/entities/parked_vehicle.dart';
import 'package:all_parking/features/parking/domain/entities/parking_lot.dart';

final parkedVehicle = ParkedVehicle(
  id: '2',
  title: 'Ford Fiesta',
  color: VehicleColor.black,
  checkIn: DateTime(2021, 01, 01, 12, 30),
  checkOut: DateTime(2021, 01, 01, 17, 30),
  licensePlate: 'GAF1246',
  observations: '',
);

final parkedVehicle2 = ParkedVehicle(
  id: '3',
  title: 'Fiat Palio',
  color: VehicleColor.blue,
  checkIn: DateTime(2021, 01, 02, 10, 00),
  checkOut: DateTime(2021, 01, 03, 12, 00),
  licensePlate: 'DMB1234',
  observations: 'Lorem ipsum',
);

final parkingLot = ParkingLot(
  id: '1',
  title: 'Estacionamento X',
  address: 'Rua 13 de maio, 1538',
  availableSpots: 56,
  parkedVehicles: [parkedVehicle, parkedVehicle2],
  pricePerHour: 12.0,
);
