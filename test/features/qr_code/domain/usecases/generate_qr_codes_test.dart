import 'package:all_parking/features/qr_code/core/errors/qr_failure.dart';
import 'package:all_parking/features/qr_code/domain/entities/qr_code.dart';
import 'package:all_parking/features/qr_code/domain/repositories/i_code_repository.dart';
import 'package:all_parking/features/qr_code/domain/usecases/generate_qr_codes.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/kt.dart';
import 'package:mockito/mockito.dart';

import '../../../../fixtures/parking_lot_fixtures.dart';

class MockCodeRepository extends Mock implements ICodeRepository {}

void main() {
  GenerateQRCodes usecase;
  MockCodeRepository mockCodeRepository;

  setUp(() {
    mockCodeRepository = MockCodeRepository();
    usecase = GenerateQRCodes(mockCodeRepository);
  });

  test('should return qr code list with different ids', () async {
    when(mockCodeRepository.create(any, parkingLot: anyNamed('parkingLot'))).thenAnswer((_) async => Right(unit));

    final result = await usecase(Fixtures.parkingLot);
    final list = result.getOrElse(() => null);

    expect(result, isA<Right<QRFailure, KtList<QRCode>>>());
    expect(list.size, 20);
    expect(list.all((code) => code.value is String), true);
    expect(list.distinct(), list);
  });

  test('should call create on repository', () async {
    when(mockCodeRepository.create(any, parkingLot: anyNamed('parkingLot'))).thenAnswer((_) async => Right(unit));

    await usecase(Fixtures.parkingLot);

    verify(mockCodeRepository.create(any, parkingLot: anyNamed('parkingLot'))).called(1);
    verifyNoMoreInteractions(mockCodeRepository);
  });
  
  test('should return failure when repository fails', () async {
    when(mockCodeRepository.create(any, parkingLot: anyNamed('parkingLot'))).thenAnswer((_) async => Left(QRFailure.serverFailure()));

    final result = await usecase(Fixtures.parkingLot);

    expect(result.swap().getOrElse(() => null), isA<QRFailure>());
  });
}
