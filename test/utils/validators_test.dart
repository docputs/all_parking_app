import 'package:all_parking/utils/validators.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('validateCep', () {
    test('should return cep String when cep is valid', () {
      final ceps = ['04159-001', '12345-678', '00000-000'];

      final result = ceps.every((element) => Validators.validateCep(element).isRight());

      expect(result, true);
    });

    test('should return failure when cep is invalid', () {
      final ceps = ['000a1-234', '123456-789', '0987-651', '04159001'];

      final result = ceps.every((element) => Validators.validateCep(element).isLeft());

      expect(result, true);
    });
  });

  group('validateLicensePlate', () {
    test('should return license plate when it is valid', () {
      final plates = ['GAF1246', 'DMB3456', 'ABC1234', 'XYZ0000'];

      final result = plates.every((element) => Validators.validateLicensePlate(element).isRight());

      expect(result, true);
    });

    test('should return failure when license plate is invalid', () {
      final plates = ['ABC12345', 'ABCD1234', '1234ABC', 'ABC123', 'AB1234'];

      final result = plates.every((element) => Validators.validateLicensePlate(element).isLeft());

      expect(result, true);
    });
  });
}
