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
  ManagerAuthRepository repository;

  setUp(() {
    mockFirestore = MockFirestoreInstance();
    mockFirebaseAuth = MockFirebaseAuth();
    repository = ManagerAuthRepository(mockFirebaseAuth, mockFirestore);
  });
}
