import 'dart:async';

import 'package:all_parking/features/qr_code/core/errors/qr_failure.dart';
import 'package:all_parking/features/qr_code/domain/entities/qr_code.dart';
import 'package:all_parking/res/constants.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

part 'code_scanner_bloc.freezed.dart';
part 'code_scanner_event.dart';
part 'code_scanner_state.dart';

@injectable
class CodeScannerBloc extends Bloc<CodeScannerEvent, CodeScannerState> {
  CodeScannerBloc() : super(_Initial());

  QRViewController _controller;
  StreamSubscription<Barcode> _subscription;

  @override
  Stream<CodeScannerState> mapEventToState(CodeScannerEvent event) async* {
    yield* event.when(started: _mapStarted, codeReceived: _mapCodeReceived);
  }

  Stream<CodeScannerState> _mapStarted(QRViewController controller) async* {
    _controller = controller;
    _subscription = _controller.scannedDataStream.listen((barcode) => add(CodeScannerEvent.codeReceived(barcode.code)));
  }

  Stream<CodeScannerState> _mapCodeReceived(String value) async* {
    if (Constants.qrCodeRegex.hasMatch(value)) {
      yield CodeScannerState.scanned(QRCode(value));
      _controller.stopCamera();
    } else
      yield CodeScannerState.error(QRFailure.invalidQRCode());
  }

  @override
  Future<void> close() async {
    _controller.dispose();
    await _subscription.cancel();
    return super.close();
  }
}
