import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
abstract class AuthFailure with _$AuthFailure {
  const factory AuthFailure.emptyField() = _EmptyField;
  const factory AuthFailure.displayNameTooLong() = _DisplayNameTooLong;
  const factory AuthFailure.emailAlreadyInUse() = _EmailAlreadyInUse;
  const factory AuthFailure.cancelledByUser() = _CancelledByUser;
  const factory AuthFailure.invalidEmailAddress() = _InvalidEmailAddress;
  const factory AuthFailure.invalidEmailAndPasswordCombination() = _InvalidEmailAndPasswordCombination;
  const factory AuthFailure.emailBadlyFormatted() = _EmailBadlyFormatted;
  const factory AuthFailure.weakPassword() = _WeakPassword;
  const factory AuthFailure.serverFailure() = _ServerFailure;
  const factory AuthFailure.unknownFailure() = _UnknownFailure;
  const factory AuthFailure.passwordsDontMatch() = _PasswordsDontMatch;
}
