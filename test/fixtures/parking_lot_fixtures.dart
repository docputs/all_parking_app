import 'package:all_parking/features/parking/domain/entities/address.dart';
import 'package:all_parking/features/parking/domain/entities/associated_parking_lot.dart';
import 'package:all_parking/features/parking/domain/entities/employee.dart';
import 'package:all_parking/features/parking/domain/entities/manager.dart';
import 'package:all_parking/features/parking/domain/entities/parked_vehicle.dart';
import 'package:all_parking/features/parking/domain/entities/parking_lot.dart';
import 'package:kt_dart/kt.dart';

class Fixtures {
  static final checkOutDateTime = DateTime(2021, 01, 01, 14);

  static final parkedVehicle = ParkedVehicle(
    id: QRCode('1'),
    title: 'Ford Fiesta',
    color: VehicleColor.black,
    checkIn: DateTime(2021, 01, 01, 12, 30),
    checkOut: null,
    licensePlate: 'GAF1246',
    observations: '',
    type: VehicleType.car,
    isActive: true,
  );

  static final parkedVehicle2 = ParkedVehicle(
    id: QRCode('2'),
    title: 'Fiat Palio',
    color: VehicleColor.blue,
    checkIn: DateTime(2021, 01, 02, 10, 00),
    checkOut: null,
    licensePlate: 'DMB1234',
    observations: 'Lorem ipsum',
    type: VehicleType.car,
    isActive: true,
  );

  static final inactiveParkedVehicle = parkedVehicle.copyWith(isActive: false, checkOut: checkOutDateTime);

  static final parkingLot = ParkingLot(
    id: '1',
    title: 'Estacionamento X',
    address: Address(street: 'Rua Nossa Senhora da Saúde', number: '12', cep: '04159001', city: 'São Paulo', uf: 'SP'),
    availableSpots: 56,
    pricePerHour: 12.0,
  );

  static final parkingLotWithParkedVehicles = ParkingLot(
    id: '1',
    title: 'Estacionamento X',
    address: Address(street: 'Rua Nossa Senhora da Saúde', number: '12', cep: '04159001', city: 'São Paulo', uf: 'SP'),
    availableSpots: 56,
    pricePerHour: 12.0,
  );

  static final parkingLotWithInactiveParkedVehicle = ParkingLot(
    id: '1',
    title: 'Estacionamento X',
    address: Address(street: 'Rua Nossa Senhora da Saúde', number: '12', cep: '04159001', city: 'São Paulo', uf: 'SP'),
    availableSpots: 56,
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
    cpf: '123.456.789-09',
    parkingLot: AssociatedParkingLot(id: '1', title: 'Estacionamento X'),
    phoneNumber: '(99) 99999-9999',
  );

  static final newManager = manager.copyWith(parkingLots: manager.parkingLots.plusElement(parkingLot.id));

  static final parkedVehicles = [parkedVehicle, parkedVehicle2, parkedVehicle];
}
