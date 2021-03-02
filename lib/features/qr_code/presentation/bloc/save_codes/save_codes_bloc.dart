import 'dart:async';
import 'dart:io';

import 'package:all_parking/features/qr_code/core/errors/qr_failure.dart';
import 'package:all_parking/features/qr_code/core/utils/qr_local_storage.dart';
import 'package:all_parking/features/qr_code/core/utils/widget_to_image.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:screenshot/screenshot.dart';

part 'save_codes_bloc.freezed.dart';
part 'save_codes_event.dart';
part 'save_codes_state.dart';

@injectable
class SaveCodesBloc extends Bloc<SaveCodesEvent, SaveCodesState> {
  final WidgetToImage _widgetToImage;
  final QRLocalStorage _localStorage;

  SaveCodesBloc(this._widgetToImage, this._localStorage) : super(_Initial());

  final _controller = ScreenshotController();
  ScreenshotController get controller => _controller;

  @override
  Stream<SaveCodesState> mapEventToState(SaveCodesEvent event) async* {
    yield* event.when(saveRequested: _mapSaveRequested);
  }

  Stream<SaveCodesState> _mapSaveRequested() async* {
    try {
      final bytes = await _controller.capture();
      final file = await _localStorage.saveAsPdf(bytes);
      yield SaveCodesState.success(file);
    } catch (e) {
      print(e);
      yield SaveCodesState.error(QRFailure.widgetToImageFailed());
    }
  }
}
