import 'package:all_parking/features/parking/data/repositories/manager_repository.dart';
import 'package:all_parking/utils/error_report_service.dart';
import 'package:cloud_firestore_mocks/cloud_firestore_mocks.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../../fixtures/parking_lot_fixtures.dart';

class MockFirebaseAuth extends Mock implements FirebaseAuth {}

class MockErrorReportService extends Mock implements ErrorReportService {}

void main() {
  ManagerRepository repository;
  MockFirestoreInstance mockFirestoreInstance;
  MockFirebaseAuth mockFirebaseAuth;
  MockErrorReportService mockErrorReportService;

  setUp(() {
    mockFirestoreInstance = MockFirestoreInstance();
    mockFirebaseAuth = MockFirebaseAuth();
    mockErrorReportService = MockErrorReportService();
    repository = ManagerRepository(mockFirestoreInstance, mockFirebaseAuth, mockErrorReportService);
  });

  test('should call Firebase Firestore with parsed ParkingLot and return unit', () async {
    final result = await repository.update(Fixtures.manager);

    print(mockFirestoreInstance.dump());
    expect(result, Right(unit));
  });
}
