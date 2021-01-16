import 'package:freezed_annotation/freezed_annotation.dart';

part 'manager_failure.freezed.dart';

@freezed
abstract class ManagerFailure with _$ManagerFailure {
  const factory ManagerFailure.serverFailure() = _ServerFailure;
  const factory ManagerFailure.unknownFailure() = _UnknownFailure;
}
