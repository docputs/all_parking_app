import 'package:all_parking/features/parking/core/errors/parking_failure.dart';
import 'package:all_parking/features/parking/domain/entities/parking_lot.dart';
import 'package:all_parking/features/parking/domain/repositories/i_manager_repository.dart';
import 'package:all_parking/features/parking/domain/repositories/i_parking_lot_repository.dart';
import 'package:all_parking/features/parking/domain/usecases/fetch_parking_lots.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../../fixtures/parking_lot_fixtures.dart';

class MockParkingLotRepository extends Mock implements IParkingLotRepository {}

class MockManagerRepository extends Mock implements IManagerRepository {}

void main() {
  FetchParkingLots usecase;
  MockParkingLotRepository mockParkingLotRepository;
  MockManagerRepository mockManagerRepository;

  setUp(() {
    mockParkingLotRepository = MockParkingLotRepository();
    mockManagerRepository = MockManagerRepository();
    usecase = FetchParkingLots(mockParkingLotRepository, mockManagerRepository);
  });

  ParkingLot unpackEitherList(Either<ParkingFailure, List<ParkingLot>> either) {
    return either.getOrElse(() => null).first;
  }

  test('should get manager data from ManagerRepository', () async {
    when(mockManagerRepository.read()).thenAnswer((_) async => right(Fixtures.manager));

    await usecase();

    verify(mockManagerRepository.read());
    verifyNoMoreInteractions(mockManagerRepository);
  });

  test('should return parking lots when manager is signed in', () async {
    when(mockManagerRepository.read()).thenAnswer((_) async => right(Fixtures.manager));
    when(mockParkingLotRepository.fetchParkingLots(Fixtures.manager)).thenAnswer((_) async => Right([Fixtures.parkingLot]));

    final result = await usecase();

    expect(unpackEitherList(result), unpackEitherList(Right([Fixtures.parkingLot])));
  });
}
