import 'package:all_parking/features/parking/core/errors/parking_failure.dart';
import 'package:all_parking/features/parking/domain/repositories/i_parking_lot_repository.dart';
import 'package:all_parking/features/parking/domain/usecases/add_parking_lot.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../../fixtures/parking_lot_fixtures.dart';

class MockParkingLotRepository extends Mock implements IParkingLotRepository {}

void main() {
  AddParkingLot usecase;
  MockParkingLotRepository mockParkingLotRepository;

  setUp(() {
    mockParkingLotRepository = MockParkingLotRepository();
    usecase = AddParkingLot(mockParkingLotRepository);
  });

  test('should call create on repository', () {
    usecase(parkingLot);

    verify(mockParkingLotRepository.create(any));
    verifyNoMoreInteractions(mockParkingLotRepository);
  });

  test('should return unit when repository runs successfully', () async {
    when(mockParkingLotRepository.create(any)).thenAnswer((_) async => Right(unit));

    final result = await usecase(parkingLot);

    expect(result, Right(unit));
  });

  test('should return ParkingFailure when repository fails', () async {
    when(mockParkingLotRepository.create(any)).thenAnswer((_) async => Left(const ParkingFailure.serverFailure()));

    final result = await usecase(parkingLot);

    expect(result, Left(const ParkingFailure.serverFailure()));
  });
}
