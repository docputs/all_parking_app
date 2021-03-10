part of 'share_qr_codes_bloc.dart';

@freezed
abstract class ShareQrCodesEvent with _$ShareQrCodesEvent {
  const factory ShareQrCodesEvent.shareRequested(ParkingLot parkingLot) = _ShareRequested;
}
