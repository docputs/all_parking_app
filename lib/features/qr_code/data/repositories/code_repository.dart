import 'package:all_parking/features/qr_code/core/errors/qr_failure.dart';
import 'package:all_parking/features/qr_code/domain/entities/qr_code.dart';
import 'package:all_parking/features/qr_code/domain/repositories/i_code_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

@LazySingleton(as: ICodeRepository)
class CodeRepository implements ICodeRepository {
  @override
  Future<Either<QRFailure, Unit>> create(KtList<QRCode> codes) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<Either<QRFailure, KtList<QRCode>>> read() {
    // TODO: implement read
    throw UnimplementedError();
  }
}
