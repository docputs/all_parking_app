import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../errors/auth_failure.dart';

const emailRegexp = r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";

@lazySingleton
class Validators {
  Either<AuthFailure, String> validateEmailAddress(String input) {
    if (RegExp(emailRegexp).hasMatch(input)) {
      return right(input);
    } else if (input.isEmpty) {
      return left(const AuthFailure.emptyField());
    } else {
      return left(const AuthFailure.emailBadlyFormatted());
    }
  }

  Either<AuthFailure, String> validateDisplayName(String input) {
    if (input.length <= 30 && input.length > 0) {
      return right(input);
    } else if (input.isEmpty) {
      return left(const AuthFailure.emptyField());
    } else {
      return left(const AuthFailure.displayNameTooLong());
    }
  }

  Either<AuthFailure, String> validatePassword(String input) {
    if (input.isNotEmpty) {
      return right(input);
    } else {
      return left(const AuthFailure.emptyField());
    }
  }

  Either<AuthFailure, String> validateConfirmPassword(String input, String password) {
    if (input == password)
      return right(input);
    else
      return left(const AuthFailure.passwordsDontMatch());
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
