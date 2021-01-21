import 'package:all_parking/features/auth/data/models/sign_in_model.dart';
import 'package:dartz/dartz.dart';
import 'package:all_parking/features/auth/core/errors/auth_failure.dart';
import 'package:all_parking/features/auth/core/util/validators.dart';
import 'package:all_parking/features/auth/domain/repositories/i_user_repository.dart';
import 'package:all_parking/features/auth/domain/usecases/sign_in.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockUserRepository extends Mock implements IUserRepository {}

class MockValidators extends Mock implements Validators {}

void main() {
  MockUserRepository mockUserRepository;
  MockValidators mockValidators;
  SignIn usecase;

  setUp(() {
    mockUserRepository = MockUserRepository();
    mockValidators = MockValidators();
    usecase = SignIn(mockValidators, mockUserRepository);
  });

  final email = 'teste@teste.com';
  final password = 'teste';
  final invalidEmail = 'teste@teste';
  final invalidPassword = 'test';
  final signInModel = SignInModel(email: email, password: password);

  test('should sign in when email is valid', () async {
    when(mockValidators.validateEmailAddress(any)).thenReturn(Right(email));
    when(mockUserRepository.signInWithEmailAndPassword(any)).thenAnswer((_) async => Right(unit));

    final result = await usecase(email: email, password: password);

    expect(result, Right(unit));
    verify(mockUserRepository.signInWithEmailAndPassword(signInModel));
    verifyNoMoreInteractions(mockUserRepository);
  });

  test('should return AuthFailure when email is badly formatted', () async {
    when(mockValidators.validateEmailAddress(any)).thenReturn(Left(const AuthFailure.emailBadlyFormatted()));

    final result = await usecase(email: invalidEmail, password: password);

    expect(result, Left(const AuthFailure.emailBadlyFormatted()));
  });

  group('signInWithEmailAndPassword', () {
    setUp(() {
      when(mockValidators.validateEmailAddress(any)).thenReturn(Right(email));
      when(mockUserRepository.signInWithEmailAndPassword(any))
          .thenAnswer((_) async => Left(const AuthFailure.invalidEmailAndPasswordCombination()));
    });

    test('should return AuthFailure when email is invalid', () async {
      final result = await usecase(email: invalidEmail, password: password);

      expect(result, Left(const AuthFailure.invalidEmailAndPasswordCombination()));
    });

    test('should return AuthFailure when password is invalid', () async {
      final result = await usecase(email: email, password: invalidPassword);

      expect(result, Left(const AuthFailure.invalidEmailAndPasswordCombination()));
    });
  });
}
