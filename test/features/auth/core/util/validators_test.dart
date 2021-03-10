import 'package:all_parking/features/auth/core/errors/auth_failure.dart';
import 'package:all_parking/utils/validators.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('validateEmailAddress', () {
    test('should return email adress when input is valid', () {
      final input = 'teste@teste.com';

      final result = Validators.validateEmailAddress(input);

      expect(result, Right(input));
    });

    test('should return AuthFailure when email is invalid', () {
      final input = 'teste';

      final result = Validators.validateEmailAddress(input);

      expect(result, Left(AuthFailure.emailBadlyFormatted()));
    });
  });

  group('validateConfirmPassword', () {
    test('should return password when passwords match', () {
      final input = 'senha';
      final password = 'senha';

      final result = Validators.validateConfirmPassword(input, password);

      expect(result, Right(input));
    });

    test('should return AuthFailure when passwords dont match', () {
      final input = 'senha2';
      final password = '2anhes';

      final result = Validators.validateConfirmPassword(input, password);

      expect(result, Left(AuthFailure.passwordsDontMatch()));
    });
  });
}
