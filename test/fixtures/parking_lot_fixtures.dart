import 'package:all_parking/features/parking/domain/entities/employee.dart';
import 'package:all_parking/features/parking/domain/entities/manager.dart';
import 'package:all_parking/features/parking/domain/entities/parked_vehicle.dart';
import 'package:all_parking/features/parking/domain/entities/parking_lot.dart';
import 'package:kt_dart/kt.dart';

class Fixtures {
  static final parkedVehicle = ParkedVehicle(
    id: QRCode('1'),
    title: 'Ford Fiesta',
    color: VehicleColor.black,
    checkIn: DateTime(2021, 01, 01, 12, 30),
    checkOut: DateTime(2021, 01, 01, 17, 30),
    licensePlate: 'GAF1246',
    observations: '',
  );

  static final parkedVehicle2 = ParkedVehicle(
    id: QRCode('2'),
    title: 'Fiat Palio',
    color: VehicleColor.blue,
    checkIn: DateTime(2021, 01, 02, 10, 00),
    checkOut: DateTime(2021, 01, 03, 12, 00),
    licensePlate: 'DMB1234',
    observations: 'Lorem ipsum',
  );

  static final parkingLot = ParkingLot(
    id: '1',
    title: 'Estacionamento X',
    address: Address(street: 'Rua Nossa Senhora da Saúde', number: '12', cep: '04159001', city: 'São Paulo', uf: 'SP'),
    availableSpots: 56,
    parkedVehicles: [parkedVehicle, parkedVehicle2],
    pricePerHour: 12.0,
  );

  static final parkingLotWithNewParkedVehicle = ParkingLot(
    id: '1',
    title: 'Estacionamento X',
    address: Address(street: 'Rua Nossa Senhora da Saúde', number: '12', cep: '04159001', city: 'São Paulo', uf: 'SP'),
    availableSpots: 56,
    parkedVehicles: [parkedVehicle, parkedVehicle2, parkedVehicle],
    pricePerHour: 12.0,
  );

  static final manager = Manager(
    id: '123',
    email: 'manager@test.com',
    displayName: 'Vanessa',
    employees: KtList.from([employee]),
    parkingLots: KtList.empty(),
  );

  static final employee = Employee(
    id: '456',
    displayName: 'Bruno',
  );

  static final newManager = manager.copyWith(parkingLots: manager.parkingLots.plusElement(parkingLot.id));

  static final parkedVehicles = [
    ParkedVehicle(
      id: QRCode('1'),
      title: 'Ford Fiesta',
      licensePlate: 'GAF1246',
      color: VehicleColor.black,
      checkIn: DateTime(2020, 01, 19, 12, 30),
      checkOut: DateTime(2020, 01, 19, 12, 30),
      observations: '',
    ),
    ParkedVehicle(
      id: QRCode('2'),
      title: 'Fiat Palio',
      licensePlate: 'DMB2871',
      color: VehicleColor.gray,
      checkIn: DateTime(2020, 01, 19, 12, 30),
      checkOut: DateTime(2020, 01, 19, 12, 30),
      observations: '',
    ),
    ParkedVehicle(
      id: QRCode('3'),
      title: 'Hyundai i30',
      licensePlate: 'ABC1234',
      color: VehicleColor.red,
      checkIn: DateTime(2020, 01, 19, 12, 30),
      checkOut: DateTime(2020, 01, 19, 12, 30),
      observations: '',
    ),
  ];
}
