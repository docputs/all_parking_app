import 'package:all_parking/features/parking/data/repositories/manager_repository.dart';
import 'package:cloud_firestore_mocks/cloud_firestore_mocks.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fixtures/parking_lot_fixtures.dart';

void main() {
  ManagerRepository repository;
  MockFirestoreInstance mockFirestoreInstance;

  setUp(() {
    mockFirestoreInstance = MockFirestoreInstance();
    repository = ManagerRepository(mockFirestoreInstance);
  });

  test('should call Firebase Firestore with parsed ParkingLot and return unit', () async {
    final result = await repository.update(manager);

    print(mockFirestoreInstance.dump());
    expect(result, Right(unit));
  });
}
