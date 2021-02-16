import 'package:cpfcnpj/cpfcnpj.dart';
import 'package:dartz/dartz.dart';

import '../features/auth/core/errors/auth_failure.dart';
import '../features/parking/core/errors/parking_failure.dart';
import '../res/constants.dart';

class Validators {
  static Either<AuthFailure, String> validateEmailAddress(String input) {
    if (Constants.emailRegex.hasMatch(input)) {
      return right(input);
    } else if (input.isEmpty) {
      return left(AuthFailure.emptyField());
    } else {
      return left(AuthFailure.emailBadlyFormatted());
    }
  }

  static Either<AuthFailure, String> validateDisplayName(String input) {
    if (input.length <= 30 && input.length > 0) {
      return right(input);
    } else if (input.isEmpty) {
      return left(AuthFailure.emptyField());
    } else {
      return left(AuthFailure.displayNameTooLong());
    }
  }

  static Either<AuthFailure, String> validatePassword(String input) {
    if (input.isNotEmpty && input.length > 4) {
      return right(input);
    } else if (input.length <= 4) {
      return left(AuthFailure.weakPassword());
    } else {
      return left(AuthFailure.emptyField());
    }
  }

  static Either<AuthFailure, String> validateConfirmPassword(String input, String password) {
    if (input == password)
      return right(input);
    else
      return left(AuthFailure.passwordsDontMatch());
  }

  static Either<ParkingFailure, String> validateParkingLotTitle(String input) {
    if (input.length <= 30 && input.length > 0)
      return right(input);
    else if (input.isEmpty)
      return left(ParkingFailure.emptyField());
    else
      return left(ParkingFailure.invalidParkingLotTitle());
  }

  static Either<ParkingFailure, String> validateAvailableSpotsField(String input) {
    if (input.isEmpty) return left(ParkingFailure.emptyField());
    final intInput = int.tryParse(input);
    if (intInput > 0 && intInput != null)
      return right(input);
    else
      return left(ParkingFailure.invalidAvailableSpots());
  }

  static Either<ParkingFailure, String> validatePricePerHour(String input) {
    if (input.isEmpty) return left(ParkingFailure.emptyField());
    final parsedInput = double.tryParse(input);
    if (parsedInput > 0 && parsedInput < 100 && parsedInput != null)
      return right(input);
    else
      return left(ParkingFailure.invalidPricePerHour());
  }

  static Either<ParkingFailure, String> validateCep(String input) {
    if (Constants.cepRegex.hasMatch(input))
      return right(input);
    else
      return left(ParkingFailure.invalidCep());
  }

  static Either<ParkingFailure, String> validateVehicleLabel(String input) {
    if (input.length > 0 && input.length <= 30)
      return right(input);
    else if (input.isEmpty)
      return left(ParkingFailure.emptyField());
    else
      return left(ParkingFailure.invalidField());
  }

  static Either<ParkingFailure, String> validateLicensePlate(String input) {
    if (Constants.licensePlateRegex.hasMatch(input))
      return right(input);
    else if (input.isEmpty)
      return left(ParkingFailure.emptyField());
    else
      return left(ParkingFailure.invalidField());
  }

  static Either<ParkingFailure, String> validateObservations(String input) {
    if (input.length <= 120)
      return right(input);
    else
      return left(ParkingFailure.invalidField());
  }

  static Either<ParkingFailure, String> validateCpf(String input) {
    if (CPF.isValid(input) || input.isEmpty)
      return right(input);
    else
      return left(ParkingFailure.invalidField());
  }

  static Either<AuthFailure, String> validatePhoneNumber(String input) {
    if (Constants.phoneNumberRegex.hasMatch(input))
      return right(input);
    else
      return left(AuthFailure.invalidField());
  }

  static bool isValidPassword(String input) => input.isNotEmpty;

  static bool isPasswordMatch(String input, String password) => input == password;

  static bool isValidEmail(String input) => validateEmailAddress(input).fold((_) => false, (_) => true);

  static bool isValidDisplayName(String input) => validateDisplayName(input).fold((_) => false, (_) => true);

  static bool isValidParkingLotTitle(String input) => validateParkingLotTitle(input).fold((_) => false, (_) => true);

  static bool isValidAvailableSpots(String input) => validateAvailableSpotsField(input).fold((_) => false, (_) => true);

  static bool isValidPricePerHour(String input) => validatePricePerHour(input).fold((_) => false, (_) => true);

  static bool isValidCep(String input) => validateCep(input).fold((_) => false, (_) => true);

  static bool isValidCpf(String input) => validateCpf(input).fold((_) => false, (_) => true);

  static bool isValidObservations(String input) => validateObservations(input).fold((_) => false, (_) => true);

  static bool isValidLicensePlate(String input) => validateLicensePlate(input).fold((_) => false, (_) => true);

  static bool isValidVehicleLabel(String input) => validateVehicleLabel(input).fold((_) => false, (_) => true);
}
