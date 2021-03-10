import 'package:all_parking/features/auth/data/datasources/i_local_data_source.dart';
import 'package:all_parking/features/auth/data/repositories/employee_auth_repository.dart';
import 'package:all_parking/utils/error_report_service.dart';
import 'package:cloud_firestore_mocks/cloud_firestore_mocks.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockLocalDataSource extends Mock implements ILocalDataSource {}

class MockErrorReportService extends Mock implements ErrorReportService {}

void main() {
  MockFirestoreInstance mockFirestore;
  MockLocalDataSource mockSharedPreferences;
  EmployeeAuthRepository repository;
  MockErrorReportService mockErrorReportService;

  setUp(() {
    mockFirestore = MockFirestoreInstance();
    mockSharedPreferences = MockLocalDataSource();
    repository = EmployeeAuthRepository(mockSharedPreferences, mockFirestore, mockErrorReportService);
  });

  const token = '1824ea40-6663-11eb-8bd0-8745b8b6d82f';

  group('signInWithToken |', () {
    test('should sign in successfully when token matches employee id', () async {
      const employeeId = '1824ea40-6663-11eb-8bd0-8745b8b6d82f';
      await mockFirestore.collection('users').doc(employeeId).set({});

      final result = await repository.signInWithToken(token);

      expect(result, Right(unit));
    });
  });
}
