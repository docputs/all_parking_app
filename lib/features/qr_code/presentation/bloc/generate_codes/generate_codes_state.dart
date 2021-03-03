part of 'generate_codes_bloc.dart';

@freezed
abstract class GenerateCodesState with _$GenerateCodesState {
  const factory GenerateCodesState.initial() = _Initial;
  const factory GenerateCodesState.loading() = _Loading;
  const factory GenerateCodesState.success(KtList<QRCode> codes) = _Success;
  const factory GenerateCodesState.error(QRFailure failure) = _Error;
}
