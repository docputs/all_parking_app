import 'package:all_parking/utils/validators.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('validateCep |', () {
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

  group('validateLicensePlate |', () {
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

  group('validatePhoneNumber |', () {
    test('should return phone number when it is valid', () {
      final phoneNumbers = [
        '(11) 95320-8668',
        '(11) 95402-8675',
        '(12) 5077-1820',
        '(51) 92838-2482',
      ];

      final result = phoneNumbers.every((element) => Validators.validatePhoneNumber(element).isRight());

      expect(result, true);
    });

    test('should return Failure when phone number is invalid', () {
      final phoneNumbers = [
        '(11) 82731-1212',
        '(11) 12019 1212',
        '(01) 848488-1122',
        '(02)1191-4949',
        '(011) 95320-8668',
        '95838-1202',
      ];

      final result = phoneNumbers.every((element) => Validators.validatePhoneNumber(element).isLeft());

      expect(result, true);
    });
  });

  group('validateCpf |', () {
    test('should return CPF when it is valid and not required', () {
      final cpfs = ['123.456.789-09', '477.209.578-06'];

      final result = cpfs.every((element) => Validators.validateCpf(element, false).isRight());

      expect(result, true);
    });

    test('should return CPF when it is valid required', () {
      final cpfs = ['123.456.789-09', '477.209.578-06'];

      final result = cpfs.every((element) => Validators.validateCpf(element, true).isRight());

      expect(result, true);
    });

    test('should return Failure when CPF is invalid and not required', () {
      final cpfs = ['123.123.123-12', '22.22.22.11', '999.999.999-99', '123.456.789.00'];

      final result = cpfs.every((element) => Validators.validateCpf(element, false).isLeft());

      expect(result, true);
    });

    test('should return Failure when CPF is empty required', () {
      final cpf = '';

      final result = Validators.validateCpf(cpf, true).isLeft();

      expect(result, true);
    });
  });
}
