import 'package:all_parking/features/auth/core/errors/auth_failure.dart';
import 'package:all_parking/features/auth/core/util/validators.dart';
import 'package:all_parking/features/auth/data/models/register_model.dart';
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

  final firstName = 'John';
  final lastName = 'Doe';
  final email = 'teste@teste.com';
  final password = 'teste';
  final registerModel = RegisterModel(email: email, firstName: firstName, lastName: lastName, password: password);

  test('should return User when successfully signed up', () async {
    when(mockUserRepository.createAccount(any)).thenAnswer((_) async => Right(unit));
    when(mockValidators.validateDisplayName(any)).thenReturn(Right('$firstName $lastName'));
    when(mockValidators.validateEmailAddress(any)).thenReturn(Right(email));
    when(mockValidators.validatePassword(any)).thenReturn(Right(password));

    final result = await usecase(firstName: firstName, lastName: lastName, email: email, password: password);

    expect(result, Right(unit));
    verify(mockUserRepository.createAccount(registerModel));
    verifyNoMoreInteractions(mockUserRepository);
  });

  group('AuthFailure', () {
    setUp(() {
      when(mockUserRepository.createAccount(registerModel)).thenAnswer((_) async => Right(unit));
    });

    test('should return failure when displayName is invalid', () async {
      when(mockValidators.validateDisplayName(any)).thenReturn(Left(const AuthFailure.displayNameTooLong()));

      final result = await usecase(firstName: firstName, lastName: lastName, email: email, password: password);

      expect(result, Left(const AuthFailure.displayNameTooLong()));
    });

    test('should return failure when email is invalid', () async {
      when(mockValidators.validateDisplayName(any)).thenReturn(Right('$firstName $lastName'));
      when(mockValidators.validateEmailAddress(any)).thenReturn(Left(const AuthFailure.emailBadlyFormatted()));

      final result = await usecase(firstName: firstName, lastName: lastName, email: email, password: password);

      expect(result, Left(const AuthFailure.emailBadlyFormatted()));
    });

    test('should return failure when password is weak', () async {
      when(mockValidators.validateDisplayName(any)).thenReturn(Right('$firstName $lastName'));
      when(mockValidators.validateEmailAddress(any)).thenReturn(Right(email));
      when(mockValidators.validatePassword(any)).thenReturn(Left(const AuthFailure.weakPassword()));

      final result = await usecase(firstName: firstName, lastName: lastName, email: email, password: password);

      expect(result, Left(const AuthFailure.weakPassword()));
    });
  });
}
