import 'package:all_parking/features/parking/data/repositories/parking_lot_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_mocks/cloud_firestore_mocks.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fixtures/parking_lot_fixtures.dart';

void main() {
  ParkingLotRepository repository;
  MockFirestoreInstance mockFirestoreInstance;

  setUp(() {
    mockFirestoreInstance = MockFirestoreInstance();
    repository = ParkingLotRepository(mockFirestoreInstance);
  });

  test('should call Firebase Firestore with parsed ParkingLot and return unit', () async {
    final result = await repository.create(Fixtures.parkingLot);

    print(mockFirestoreInstance.dump());
    expect(result, Right(unit));
  });

  group('checkInVehicle |', () {
    final parkingLotId = Fixtures.parkingLot.id;
    final vehicleId = Fixtures.parkedVehicle.id.value;
    test('should save vehicle inside the proper subcollection on Firestore', () async {
      final result = await repository.checkInVehicle(Fixtures.parkedVehicle, parkingLot: Fixtures.parkingLot);

      expect(result, Right(unit));
      expect(mockFirestoreInstance.hasSavedDocument('parking_lots/$parkingLotId/parked_vehicles/$vehicleId'), true);
    });
  });

  group('checkOutVehicle |', () {
    final parkingLotId = Fixtures.parkingLot.id;
    final vehicleId = Fixtures.parkedVehicle.id.value;

    test('should assign check out inside proper vehicle', () async {
      final result = await repository.checkOutVehicle(Fixtures.parkedVehicle, parkingLot: Fixtures.parkingLot);
      final editedDoc = await mockFirestoreInstance.collection('parking_lots/$parkingLotId/parked_vehicles').doc(vehicleId).get();

      expect(result, Right(unit));
      expect(editedDoc.data()['isActive'], false);
      expect(editedDoc.data()['checkOut'], isA<Timestamp>());
    });
  });
}
