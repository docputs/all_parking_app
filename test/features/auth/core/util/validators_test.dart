import 'package:all_parking/features/auth/core/errors/auth_failure.dart';
import 'package:all_parking/features/auth/core/util/validators.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  Validators validators;

  setUp(() {
    validators = Validators();
  });

  test('should return email adress when input is valid', () {
    final input = 'teste@teste.com';

    final result = validators.validateEmailAddress(input);

    expect(result, Right(input));
  });

  test('should return AuthFailure when email is invalid', () {
    final input = 'teste';

    final result = validators.validateEmailAddress(input);

    expect(result, Left(AuthFailure.emailBadlyFormatted()));
  });
}
