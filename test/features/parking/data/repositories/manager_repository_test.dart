import 'package:all_parking/features/parking/data/repositories/manager_repository.dart';
import 'package:cloud_firestore_mocks/cloud_firestore_mocks.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../../fixtures/parking_lot_fixtures.dart';

class MockFirebaseAuth extends Mock implements FirebaseAuth {}

void main() {
  ManagerRepository repository;
  MockFirestoreInstance mockFirestoreInstance;
  MockFirebaseAuth mockFirebaseAuth;

  setUp(() {
    mockFirestoreInstance = MockFirestoreInstance();
    mockFirebaseAuth = MockFirebaseAuth();
    repository = ManagerRepository(mockFirestoreInstance, mockFirebaseAuth);
  });

  test('should call Firebase Firestore with parsed ParkingLot and return unit', () async {
    final result = await repository.update(Fixtures.manager);

    print(mockFirestoreInstance.dump());
    expect(result, Right(unit));
  });
}
