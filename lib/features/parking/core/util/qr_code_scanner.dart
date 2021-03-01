import 'package:all_parking/features/qr_code/domain/entities/qr_code.dart';
import 'package:dartz/dartz.dart';
import 'package:uuid/uuid.dart';

class QRCodeScanner {
  static Future<Option<QRCode>> scan() async {
    await Future.delayed(const Duration(seconds: 2));
    return some(QRCode(Uuid().v1()));
  }
}
