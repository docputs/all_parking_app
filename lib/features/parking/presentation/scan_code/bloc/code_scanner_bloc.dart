import 'dart:async';

import 'package:all_parking/features/parking/domain/entities/parked_vehicle.dart';
import 'package:all_parking/features/qr_code/core/errors/qr_failure.dart';
import 'package:all_parking/res/constants.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

part 'code_scanner_event.dart';
part 'code_scanner_state.dart';
part 'code_scanner_bloc.freezed.dart';

@injectable
class CodeScannerBloc extends Bloc<CodeScannerEvent, CodeScannerState> {
  CodeScannerBloc() : super(_Initial());

  QRViewController _controller;
  KtList<ParkedVehicle> _vehicles;

  @override
  Stream<CodeScannerState> mapEventToState(CodeScannerEvent event) async* {
    yield* event.when(started: _mapStarted, codeReceived: _mapCodeReceived);
  }

  Stream<CodeScannerState> _mapStarted(KtList<ParkedVehicle> vehicles, QRViewController controller) async* {
    _vehicles = vehicles;
    _controller = controller;
    _controller.scannedDataStream.listen((barcode) => add(CodeScannerEvent.codeReceived(barcode.code)));
  }

  Stream<CodeScannerState> _mapCodeReceived(String code) async* {
    if (Constants.qrCodeRegex.hasMatch(code)) {
      final vehicle = _vehicles.find((vehicle) => vehicle.id.value == code);
      if (vehicle == null)
        yield CodeScannerState.error(QRFailure.vehicleNotFound());
      else
        yield CodeScannerState.scanned(vehicle);
    }
  }

  void dispose() {
    _controller?.dispose();
  }
}
