import 'package:all_parking/res/messages.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
abstract class AuthFailure with _$AuthFailure {
  const factory AuthFailure.emptyField(String message) = _EmptyField;
  const factory AuthFailure.displayNameTooLong(String message) = _DisplayNameTooLong;
  const factory AuthFailure.emailAlreadyInUse(String message) = _EmailAlreadyInUse;
  const factory AuthFailure.cancelledByUser(String message) = _CancelledByUser;
  const factory AuthFailure.invalidEmailAddress(String message) = _InvalidEmailAddress;
  const factory AuthFailure.invalidEmailAndPasswordCombination(String message) = _InvalidEmailAndPasswordCombination;
  const factory AuthFailure.emailBadlyFormatted(String message) = _EmailBadlyFormatted;
  const factory AuthFailure.weakPassword(String message) = _WeakPassword;
  const factory AuthFailure.serverFailure(String message) = _ServerFailure;
  const factory AuthFailure.unknownFailure(String message) = _UnknownFailure;
  const factory AuthFailure.passwordsDontMatch(String message) = _PasswordsDontMatch;
  const factory AuthFailure.notAuthenticated(String message) = _NotAuthenticated;
}
