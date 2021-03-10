import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'dart:ui' as ui;

@lazySingleton
class WidgetToImage {
  Future<Option<Uint8List>> convert(GlobalKey key) async {
    try {
      final boundary = key.currentContext.findRenderObject() as RenderRepaintBoundary;
      ui.Image image = await boundary.toImage(pixelRatio: 3.0);
      final byteData = await image.toByteData(format: ui.ImageByteFormat.png);
      return optionOf(byteData.buffer.asUint8List());
    } catch (e) {
      print(e);
      return none();
    }
  }
}
