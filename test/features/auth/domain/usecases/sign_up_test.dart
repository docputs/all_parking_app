import 'package:all_parking/features/auth/core/errors/auth_failure.dart';
import 'package:all_parking/features/auth/core/util/validators.dart';
import 'package:all_parking/features/auth/domain/repositories/i_user_repository.dart';
import 'package:all_parking/features/auth/domain/usecases/sign_up.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockUserRepository extends Mock implements IUserRepository {}

class MockValidators extends Mock implements Validators {}

void main() {
  MockUserRepository mockUserRepository;
  MockValidators mockValidators;
  SignUp usecase;

  setUp(() {
    mockUserRepository = MockUserRepository();
    mockValidators = MockValidators();
    usecase = SignUp(mockUserRepository, mockValidators);
  });

  final displayName = 'Teste';
  final email = 'teste@teste.com';
  final password = 'teste';

  test('should return User when successfully signed up', () async {
    when(mockUserRepository.createAccount(displayName: displayName, email: email, password: password)).thenAnswer((_) async => Right(unit));
    when(mockValidators.validateDisplayName(any)).thenReturn(Right(displayName));
    when(mockValidators.validateEmailAddress(any)).thenReturn(Right(email));
    when(mockValidators.validatePassword(any)).thenReturn(Right(password));

    final result = await usecase(displayName: displayName, email: email, password: password);

    expect(result, Right(unit));
    verify(mockUserRepository.createAccount(displayName: displayName, email: email, password: password));
    verifyNoMoreInteractions(mockUserRepository);
  });

  group('AuthFailure', () {
    setUp(() {
      when(mockUserRepository.createAccount(displayName: displayName, email: email, password: password))
          .thenAnswer((_) async => Right(unit));
    });

    test('should return failure when displayName is invalid', () async {
      when(mockValidators.validateDisplayName(any)).thenReturn(Left(const AuthFailure.displayNameTooLong()));

      final result = await usecase(displayName: displayName, email: email, password: password);

      expect(result, Left(const AuthFailure.displayNameTooLong()));
    });

    test('should return failure when email is invalid', () async {
      when(mockValidators.validateDisplayName(any)).thenReturn(Right(displayName));
      when(mockValidators.validateEmailAddress(any)).thenReturn(Left(const AuthFailure.emailBadlyFormatted()));

      final result = await usecase(displayName: displayName, email: email, password: password);

      expect(result, Left(const AuthFailure.emailBadlyFormatted()));
    });

    test('should return failure when password is weak', () async {
      when(mockValidators.validateDisplayName(any)).thenReturn(Right(displayName));
      when(mockValidators.validateEmailAddress(any)).thenReturn(Right(email));
      when(mockValidators.validatePassword(any)).thenReturn(Left(const AuthFailure.weakPassword()));

      final result = await usecase(displayName: displayName, email: email, password: password);

      expect(result, Left(const AuthFailure.weakPassword()));
    });
  });
}
