import 'package:all_parking/features/auth/data/repositories/employee_auth_repository.dart';
import 'package:cloud_firestore_mocks/cloud_firestore_mocks.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MockSharedPreferences extends Mock implements SharedPreferences {}

void main() {
  MockFirestoreInstance mockFirestore;
  MockSharedPreferences mockSharedPreferences;
  EmployeeAuthRepository repository;

  setUp(() {
    mockFirestore = MockFirestoreInstance();
    mockSharedPreferences = MockSharedPreferences();
    repository = EmployeeAuthRepository(mockSharedPreferences, mockFirestore);
  });

  const token = '1824ea40-6663-11eb-8bd0-8745b8b6d82f';

  group('getPersistentToken |', () {
    test('should return token when it is properly stored', () async {
      when(mockSharedPreferences.getString(any)).thenReturn(token);

      final result = await repository.getPersistentToken();

      expect(result, some(token));
    });

    test('should return none() when there is no persistent token', () async {
      when(mockSharedPreferences.getString(any)).thenReturn(null);

      final result = await repository.getPersistentToken();

      expect(result, none());
    });
  });

  group('signInWithToken |', () {
    test('should sign in successfully when token matches employee id', () async {
      const employeeId = '1824ea40-6663-11eb-8bd0-8745b8b6d82f';
      await mockFirestore.collection('users').doc(employeeId).set({});

      final result = await repository.signInWithToken(token);

      expect(result, Right(unit));
    });
  });
}
