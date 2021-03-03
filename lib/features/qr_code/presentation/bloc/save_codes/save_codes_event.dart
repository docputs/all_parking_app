part of 'save_codes_bloc.dart';

@freezed
abstract class SaveCodesEvent with _$SaveCodesEvent {
  const factory SaveCodesEvent.saveRequested() = _SaveRequested;
}
