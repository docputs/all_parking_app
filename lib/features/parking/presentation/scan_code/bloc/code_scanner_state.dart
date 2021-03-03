part of 'code_scanner_bloc.dart';

@freezed
abstract class CodeScannerState with _$CodeScannerState {
  const factory CodeScannerState.initial() = _Initial;
  const factory CodeScannerState.scanned(ParkedVehicle vehicle) = _Scanned;
  const factory CodeScannerState.error(QRFailure failure) = _Error;
}
