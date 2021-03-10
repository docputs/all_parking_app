part of 'save_codes_bloc.dart';

@freezed
abstract class SaveCodesState with _$SaveCodesState {
  const factory SaveCodesState.initial() = _Initial;
  const factory SaveCodesState.loading() = _Loading;
  const factory SaveCodesState.success(File file) = _Success;
  const factory SaveCodesState.error(QRFailure failure) = _Error;
}
