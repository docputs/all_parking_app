import 'package:all_parking/features/qr_code/core/errors/qr_failure.dart';
import 'package:all_parking/features/qr_code/domain/entities/qr_code.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

abstract class ICodeRepository {
  Future<Either<QRFailure, Unit>> create(KtList<QRCode> codes);
  Future<Either<QRFailure, KtList<QRCode>>> read();
}
