import 'package:freezed_annotation/freezed_annotation.dart';

part 'qr_code.freezed.dart';

@freezed
abstract class QRCode with _$QRCode {
  const factory QRCode(String value) = _QRCode;
}
