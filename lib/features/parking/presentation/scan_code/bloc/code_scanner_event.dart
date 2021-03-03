part of 'code_scanner_bloc.dart';

@freezed
abstract class CodeScannerEvent with _$CodeScannerEvent {
  const factory CodeScannerEvent.started({
    @required KtList<ParkedVehicle> vehicles,
    @required QRViewController controller,
  }) = _Started;
  const factory CodeScannerEvent.codeReceived(String code) = _CodeReceived;
}
