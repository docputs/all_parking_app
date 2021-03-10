import 'dart:io';
import 'dart:typed_data';

import 'package:all_parking/res/constants.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart' as syspath;
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';

@lazySingleton
class QRLocalStorage {
  Future<String> _getAppPath() async {
    final directory = await syspath.getApplicationDocumentsDirectory();
    return directory.path;
  }

  Future<File> saveWithBytes(Uint8List bytes) async {
    final path = await _getAppPath() + '/' + Constants.qrCodePngPath;
    return File(path).writeAsBytes(bytes);
  }

  Future<File> saveAsPdf(Uint8List bytes, {int pages, String fileName}) async {
    final pdf = Document();
    pdf.addPage(
      Page(
        pageFormat: PdfPageFormat.a4,
        orientation: PageOrientation.portrait,
        build: (context) {
          final image = MemoryImage(bytes);
          return Image(image);
        },
      ),
    );

    final path = await _getAppPath() + '/' + (fileName ?? Constants.qrCodePdfPath);
    return File(path).writeAsBytes(await pdf.save());
  }

  Future<Option<File>> getPdfFile(String fileName) async {
    final file = File(await _getAppPath() + '/' + fileName);
    if (await file.exists())
      return some(file);
    else
      return none();
  }
}
