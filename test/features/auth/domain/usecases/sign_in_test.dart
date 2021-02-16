import 'package:all_parking/features/auth/core/errors/auth_failure.dart';
import 'package:all_parking/features/auth/data/models/sign_in_model.dart';
import 'package:all_parking/features/auth/domain/repositories/i_user_repository.dart';
import 'package:all_parking/features/auth/domain/usecases/sign_in_manager.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockUserRepository extends Mock implements IUserRepository {}

void main() {
  MockUserRepository mockUserRepository;
  SignInManager usecase;

  setUp(() {
    mockUserRepository = MockUserRepository();
    usecase = SignInManager(mockUserRepository);
  });

  final email = 'teste@teste.com';
  final password = 'teste';
  final invalidEmail = 'teste@teste';
  final invalidPassword = 'test';
  final signInModel = SignInModel(email: email, password: password);

  test('should sign in when email is valid', () async {
    when(mockUserRepository.signInWithEmailAndPassword(any)).thenAnswer((_) async => Right(unit));

    final result = await usecase(email: email, password: password);

    expect(result, Right(unit));
    verify(mockUserRepository.signInWithEmailAndPassword(signInModel));
    verifyNoMoreInteractions(mockUserRepository);
  });

  test('should return AuthFailure when email is badly formatted', () async {
    final result = await usecase(email: invalidEmail, password: password);

    expect(result, Left(AuthFailure.emailBadlyFormatted()));
  });

  group('signInWithEmailAndPassword', () {
    test('should return AuthFailure when email is invalid', () async {
      final result = await usecase(email: invalidEmail, password: password);

      expect(result, Left(AuthFailure.emailBadlyFormatted()));
    });

    test('should return AuthFailure when email and password combination is invalid', () async {
      when(mockUserRepository.signInWithEmailAndPassword(any))
          .thenAnswer((_) async => Left(AuthFailure.invalidEmailAndPasswordCombination()));

      final result = await usecase(email: email, password: invalidPassword);

      expect(result, Left(AuthFailure.invalidEmailAndPasswordCombination()));
    });
  });
}
