import 'package:all_parking/utils/validators.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('validateCep', () {
    test('should return cep String when cep is valid', () {
      final cep1 = '04159001';
      final cep2 = '12345678';
      final cep3 = '00000000';

      final valid1 = Validators.validateCep(cep1);
      final valid2 = Validators.validateCep(cep2);
      final valid3 = Validators.validateCep(cep3);

      final result = [valid1, valid2, valid3].every((element) => element.isRight());

      expect(true, result);
    });

    test('should return failure when cep is invalid', () {
      final cep1 = '000a1234';
      final cep2 = '123456789';
      final cep3 = '0987651';

      final valid1 = Validators.validateCep(cep1);
      final valid2 = Validators.validateCep(cep2);
      final valid3 = Validators.validateCep(cep3);

      final result = [valid1, valid2, valid3].every((element) => element.isLeft());

      expect(true, result);
    });
  });
}
