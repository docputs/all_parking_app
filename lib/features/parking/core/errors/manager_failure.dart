import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../res/messages.dart';

part 'manager_failure.freezed.dart';

@freezed
abstract class ManagerFailure with _$ManagerFailure {
  const factory ManagerFailure(String message) = _ManagerFailure;

  factory ManagerFailure.serverFailure() => ManagerFailure(Messages.serverFailure);
  factory ManagerFailure.unknownFailure() => ManagerFailure(Messages.unknownFailure);
}
