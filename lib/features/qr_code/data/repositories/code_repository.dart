import 'package:all_parking/features/parking/domain/entities/parking_lot.dart';
import 'package:all_parking/features/qr_code/core/errors/qr_failure.dart';
import 'package:all_parking/features/qr_code/data/dtos/qr_code_dto.dart';
import 'package:all_parking/features/qr_code/domain/entities/qr_code.dart';
import 'package:all_parking/features/qr_code/domain/repositories/i_code_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import '../../../../utils/firebase_helpers.dart';

@LazySingleton(as: ICodeRepository)
class CodeRepository implements ICodeRepository {
  final FirebaseFirestore _firestore;

  const CodeRepository(this._firestore);

  @override
  Future<Either<QRFailure, Unit>> create(KtList<QRCode> codes, {@required ParkingLot parkingLot}) async {
    try {
      final codesDTO = codes.map((code) => QRCodeDTO.fromDomain(code));
      codesDTO.forEach((element) async => await _firestore.codesCollection(parkingLot.id).doc(element.value).set({}));
      return right(unit);
    } on FirebaseException catch (e) {
      print(e);
      return left(QRFailure.serverFailure());
    } catch (e) {
      print(e);
      return left(QRFailure.unknownFailure());
    }
  }

  @override
  Future<Either<QRFailure, KtList<QRCode>>> read(ParkingLot parkingLot) {
    // TODO: implement read
    throw UnimplementedError();
  }
}
