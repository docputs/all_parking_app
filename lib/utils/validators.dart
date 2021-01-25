import 'package:all_parking/features/auth/core/errors/auth_failure.dart';
import 'package:all_parking/features/parking/core/errors/parking_failure.dart';
import 'package:all_parking/res/constants.dart';
import 'package:all_parking/res/messages.dart';
import 'package:dartz/dartz.dart';

class Validators {
  static Either<AuthFailure, String> validateEmailAddress(String input) {
    if (Constants.emailRegex.hasMatch(input)) {
      return right(input);
    } else if (input.isEmpty) {
      return left(const AuthFailure.emptyField(Messages.emptyField));
    } else {
      return left(const AuthFailure.emailBadlyFormatted(Messages.emailBadlyFormatted));
    }
  }

  static Either<AuthFailure, String> validateDisplayName(String input) {
    if (input.length <= 30 && input.length > 0) {
      return right(input);
    } else if (input.isEmpty) {
      return left(const AuthFailure.emptyField(Messages.emptyField));
    } else {
      return left(const AuthFailure.displayNameTooLong(Messages.displayNameTooLong));
    }
  }

  static Either<AuthFailure, String> validatePassword(String input) {
    if (input.isNotEmpty) {
      return right(input);
    } else {
      return left(const AuthFailure.emptyField(Messages.emptyField));
    }
  }

  static Either<AuthFailure, String> validateConfirmPassword(String input, String password) {
    if (input == password)
      return right(input);
    else
      return left(const AuthFailure.passwordsDontMatch(Messages.passwordsDontMatch));
  }

  static Either<ParkingFailure, String> validateParkingLotTitle(String input) {
    if (input.length <= 30)
      return right(input);
    else
      return left(const ParkingFailure.invalidParkingLotTitle(Messages.invalidParkingLotTitle));
  }

  static Either<ParkingFailure, String> validateAvailableSpotsField(String input) {
    final intInput = int.tryParse(input);
    if (intInput > 0 && intInput != null)
      return right(input);
    else
      return left(const ParkingFailure.invalidAvailableSpots(Messages.invalidAvailableSpots));
  }

  static Either<ParkingFailure, String> validatePricePerHour(String input) {
    final parsedInput = double.tryParse(input);
    if (parsedInput > 0 && parsedInput < 100 && parsedInput != null)
      return right(input);
    else
      return left(const ParkingFailure.invalidPricePerHour(Messages.invalidPricePerHour));
  }

  static Either<ParkingFailure, String> validateCep(String input) {
    if (Constants.cepRegex.hasMatch(input))
      return right(input);
    else
      return left(const ParkingFailure.invalidCep(Messages.invalidCep));
  }

  static bool isValidPassword(String input) => input.isNotEmpty;

  static bool isPasswordMatch(String input, String password) => input == password;

  static bool isValidEmail(String input) {
    if (Constants.emailRegex.hasMatch(input)) {
      return true;
    } else {
      return false;
    }
  }

  static bool isValidDisplayName(String input) {
    if (input.length <= 30) {
      return true;
    } else {
      return false;
    }
  }
}
