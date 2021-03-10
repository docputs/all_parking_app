import 'dart:async';
import 'dart:io';

import 'package:all_parking/features/parking/core/errors/parking_failure.dart';
import 'package:all_parking/features/parking/domain/entities/parking_lot.dart';
import 'package:all_parking/features/qr_code/core/utils/qr_local_storage.dart';
import 'package:all_parking/res/constants.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'share_qr_codes_event.dart';
part 'share_qr_codes_state.dart';
part 'share_qr_codes_bloc.freezed.dart';

@injectable
class ShareQrCodesBloc extends Bloc<ShareQrCodesEvent, ShareQrCodesState> {
  final QRLocalStorage _localStorage;

  ShareQrCodesBloc(this._localStorage) : super(_Initial());

  @override
  Stream<ShareQrCodesState> mapEventToState(ShareQrCodesEvent event) async* {
    yield* event.when(shareRequested: _mapShareRequested);
  }

  Stream<ShareQrCodesState> _mapShareRequested(ParkingLot parkingLot) async* {
    final fileName = Constants.qrCodesFileName(parkingLot);
    final fileOption = await _localStorage.getPdfFile(fileName);
    yield fileOption.fold(
      () => ShareQrCodesState.error(ParkingFailure.qrFileNotFound()),
      (file) => ShareQrCodesState.success(file),
    );
  }
}
