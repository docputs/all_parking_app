import 'package:cpfcnpj/cpfcnpj.dart';
import 'package:dartz/dartz.dart';

import '../features/auth/core/errors/auth_failure.dart';
import '../features/parking/core/errors/parking_failure.dart';
import '../res/constants.dart';

class Validators {
  const Validators._();

  static Either<ParkingFailure, String> validateRequiredField(String input) {
    if (input.isNotEmpty && input != null)
      return right(input);
    else
      return left(ParkingFailure.emptyField());
  }

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

  static Either<ParkingFailure, String> validateCpf(String input, [bool isRequired = false]) {
    if (CPF.isValid(input) || (!isRequired && input.isEmpty))
      return right(input);
    else if (input.isEmpty && isRequired)
      return left(ParkingFailure.emptyField());
    else
      return left(ParkingFailure.invalidField());
  }

  static Either<ParkingFailure, String> validatePhoneNumber(String input) {
    if (Constants.phoneNumberRegex.hasMatch(input))
      return right(input);
    else
      return left(ParkingFailure.invalidField());
  }

  static bool eitherTrueOrFalse(Either either) => either.fold((l) => false, (r) => true);

  static bool isValidPassword(String input) => input.isNotEmpty;

  static bool isPasswordMatch(String input, String password) => input == password;

  static bool isValidEmail(String input) => eitherTrueOrFalse(validateEmailAddress(input));

  static bool isValidDisplayName(String input) => eitherTrueOrFalse(validateDisplayName(input));

  static bool isValidParkingLotTitle(String input) => eitherTrueOrFalse(validateParkingLotTitle(input));

  static bool isValidAvailableSpots(String input) => eitherTrueOrFalse(validateAvailableSpotsField(input));

  static bool isValidPricePerHour(String input) => eitherTrueOrFalse(validatePricePerHour(input));

  static bool isValidCep(String input) => eitherTrueOrFalse(validateCep(input));

  static bool isValidCpf(String input) => eitherTrueOrFalse(validateCpf(input));

  static bool isValidObservations(String input) => eitherTrueOrFalse(validateObservations(input));

  static bool isValidLicensePlate(String input) => eitherTrueOrFalse(validateLicensePlate(input));

  static bool isValidVehicleLabel(String input) => eitherTrueOrFalse(validateVehicleLabel(input));

  static bool isValidPhoneNumber(String input) => eitherTrueOrFalse(validatePhoneNumber(input));
}
