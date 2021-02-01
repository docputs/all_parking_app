import 'package:all_parking/features/auth/core/errors/auth_failure.dart';
import 'package:all_parking/features/auth/data/models/register_model.dart';
import 'package:all_parking/features/auth/domain/repositories/i_user_repository.dart';
import 'package:all_parking/features/auth/domain/usecases/sign_up.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockUserRepository extends Mock implements IUserRepository {}

void main() {
  MockUserRepository mockUserRepository;
  SignUp usecase;

  setUp(() {
    mockUserRepository = MockUserRepository();
    usecase = SignUp(mockUserRepository);
  });

  final firstName = 'John';
  final lastName = 'Doe';
  final email = 'teste@teste.com';
  final password = 'teste';
  final registerModel = RegisterModel(email: email, firstName: firstName, lastName: lastName, password: password);

  test('should return User when successfully signed up', () async {
    when(mockUserRepository.createAccount(any)).thenAnswer((_) async => Right(unit));

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
      final result = await usecase(firstName: 'oaksoakskoasaks', lastName: 'asoaijsajsjiasassasas', email: email, password: password);

      expect(result, Left(AuthFailure.displayNameTooLong()));
    });

    test('should return failure when email is invalid', () async {
      final result = await usecase(firstName: firstName, lastName: lastName, email: 'teste', password: password);

      expect(result, Left(AuthFailure.emailBadlyFormatted()));
    });

    test('should return failure when password is weak', () async {
      final result = await usecase(firstName: firstName, lastName: lastName, email: email, password: 'weak');

      expect(result, Left(AuthFailure.weakPassword()));
    });
  });
}
