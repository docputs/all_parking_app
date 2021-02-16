import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../res/messages.dart';

part 'auth_failure.freezed.dart';

@freezed
abstract class AuthFailure with _$AuthFailure {
  const factory AuthFailure(String message) = _AuthFailure;

  factory AuthFailure.emptyField() => const AuthFailure(Messages.emptyField);
  factory AuthFailure.invalidField() => const AuthFailure(Messages.invalidField);
  factory AuthFailure.displayNameTooLong() => const AuthFailure(Messages.displayNameTooLong);
  factory AuthFailure.emailAlreadyInUse() => const AuthFailure(Messages.emailAlreadyInUse);
  factory AuthFailure.cancelledByUser() => const AuthFailure(Messages.cancelledByUser);
  factory AuthFailure.invalidEmailAddress() => const AuthFailure(Messages.invalidEmailAddress);
  factory AuthFailure.invalidEmailAndPasswordCombination() => const AuthFailure(Messages.invalidEmailAndPasswordCombination);
  factory AuthFailure.emailBadlyFormatted() => const AuthFailure(Messages.emailBadlyFormatted);
  factory AuthFailure.weakPassword() => const AuthFailure(Messages.weakPassword);
  factory AuthFailure.passwordsDontMatch() => const AuthFailure(Messages.passwordsDontMatch);
  factory AuthFailure.notAuthenticated() => const AuthFailure(Messages.notAuthenticated);
  factory AuthFailure.serverFailure() => const AuthFailure(Messages.serverFailure);
  factory AuthFailure.unknownFailure() => const AuthFailure(Messages.unknownFailure);
}
