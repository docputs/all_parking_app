import 'package:all_parking/features/parking/domain/entities/employee.dart';
import 'package:all_parking/features/parking/domain/entities/manager.dart';
import 'package:all_parking/features/parking/domain/entities/parked_vehicle.dart';
import 'package:all_parking/features/parking/domain/entities/parking_lot.dart';
import 'package:kt_dart/kt.dart';

final parkedVehicle = ParkedVehicle(
  id: QRCode('1'),
  title: 'Ford Fiesta',
  color: VehicleColor.black,
  checkIn: DateTime(2021, 01, 01, 12, 30),
  checkOut: DateTime(2021, 01, 01, 17, 30),
  licensePlate: 'GAF1246',
  observations: '',
);

final parkedVehicle2 = ParkedVehicle(
  id: QRCode('2'),
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
  cep: '04159001',
  availableSpots: 56,
  parkedVehicles: [parkedVehicle, parkedVehicle2],
  pricePerHour: 12.0,
);

final manager = Manager(
  id: '123',
  email: 'manager@test.com',
  displayName: 'Vanessa',
  employees: KtList.from([employee]),
  parkingLots: KtList.empty(),
);

final employee = Employee(
  id: '456',
  displayName: 'Bruno',
);

final newManager = manager.copyWith(parkingLots: manager.parkingLots.plusElement(parkingLot.id));
