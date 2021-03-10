part of 'share_qr_codes_bloc.dart';

@freezed
abstract class ShareQrCodesState with _$ShareQrCodesState {
  const factory ShareQrCodesState.initial() = _Initial;
  const factory ShareQrCodesState.loading() = _Loading;
  const factory ShareQrCodesState.success(File file) = _Success;
  const factory ShareQrCodesState.error(ParkingFailure failure) = _Error;
}
