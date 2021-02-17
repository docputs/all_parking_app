import 'package:all_parking/features/auth/data/repositories/user_repository.dart';
import 'package:cloud_firestore_mocks/cloud_firestore_mocks.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockFirebaseAuth extends Mock implements FirebaseAuth {}

void main() {
  MockFirestoreInstance mockFirestore;
  MockFirebaseAuth mockFirebaseAuth;
  UserRepository repository;

  setUp(() {
    mockFirestore = MockFirestoreInstance();
    mockFirebaseAuth = MockFirebaseAuth();
    repository = UserRepository(mockFirebaseAuth, mockFirestore);
  });

  test('should return unit when token matches employee id', () async {
    final employeeId = '1824ea40-6663-11eb-8bd0-8745b8b6d82f';
    final token = '1824ea40-6663-11eb-8bd0-8745b8b6d82f';
    await mockFirestore.collection('users').doc(employeeId).set({});

    final result = await repository.signInEmployee(token);

    expect(result, Right(unit));
  });
}
