part of 'code_scanner_bloc.dart';

@freezed
abstract class CodeScannerEvent with _$CodeScannerEvent {
  const factory CodeScannerEvent.started({@required QRViewController controller}) = _Started;
  const factory CodeScannerEvent.codeReceived(String code) = _CodeReceived;
}
