import 'package:all_parking/features/auth/core/errors/auth_failure.dart';
import 'package:all_parking/features/parking/core/errors/parking_failure.dart';
import 'package:all_parking/res/constants.dart';
import 'package:all_parking/res/messages.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

const emailRegexp = r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";

@lazySingleton
class Validators {
  Either<AuthFailure, String> validateEmailAddress(String input) {
    if (RegExp(emailRegexp).hasMatch(input)) {
      return right(input);
    } else if (input.isEmpty) {
      return left(const AuthFailure.emptyField(Messages.emptyField));
    } else {
      return left(const AuthFailure.emailBadlyFormatted(Messages.emailBadlyFormatted));
    }
  }

  Either<AuthFailure, String> validateDisplayName(String input) {
    if (input.length <= 30 && input.length > 0) {
      return right(input);
    } else if (input.isEmpty) {
      return left(const AuthFailure.emptyField(Messages.emptyField));
    } else {
      return left(const AuthFailure.displayNameTooLong(Messages.displayNameTooLong));
    }
  }

  Either<AuthFailure, String> validatePassword(String input) {
    if (input.isNotEmpty) {
      return right(input);
    } else {
      return left(const AuthFailure.emptyField(Messages.emptyField));
    }
  }

  Either<AuthFailure, String> validateConfirmPassword(String input, String password) {
    if (input == password)
      return right(input);
    else
      return left(const AuthFailure.passwordsDontMatch(Messages.passwordsDontMatch));
  }

  Either<ParkingFailure, String> validateParkingLotTitle(String input) {
    if (input.length <= 30)
      return right(input);
    else
      return left(const ParkingFailure.invalidParkingLotTitle(Messages.invalidParkingLotTitle));
  }

  Either<ParkingFailure, String> validateAvailableSpotsField(String input) {
    final intInput = int.tryParse(input);
    if (intInput > 0 && intInput != null)
      return right(input);
    else
      return left(const ParkingFailure.invalidAvailableSpots(Messages.invalidAvailableSpots));
  }

  Either<ParkingFailure, String> validatePricePerHour(String input) {
    final parsedInput = double.tryParse(input);
    if (parsedInput > 0 && parsedInput < 100 && parsedInput != null)
      return right(input);
    else
      return left(const ParkingFailure.invalidPricePerHour(Messages.invalidPricePerHour));
  }

  Either<ParkingFailure, String> validateCep(String input) {
    if (Constants.cepRegex.hasMatch(input))
      return right(input);
    else
      return left(const ParkingFailure.invalidCep(Messages.invalidCep));
  }

  bool isValidPassword(String input) => input.isNotEmpty;

  bool isPasswordMatch(String input, String password) => input == password;

  bool isValidEmail(String input) {
    if (RegExp(emailRegexp).hasMatch(input)) {
      return true;
    } else {
      return false;
    }
  }

  bool isValidDisplayName(String input) {
    if (input.length <= 30) {
      return true;
    } else {
      return false;
    }
  }
}
