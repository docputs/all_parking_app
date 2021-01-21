import 'package:all_parking/features/parking/domain/repositories/i_manager_repository.dart';
import 'package:all_parking/features/parking/domain/repositories/i_parking_lot_repository.dart';
import 'package:all_parking/features/parking/domain/usecases/watch_parking_lots.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../../fixtures/parking_lot_fixtures.dart';

class MockManagerRepository extends Mock implements IManagerRepository {}

class MockParkingLotRepository extends Mock implements IParkingLotRepository {}

void main() {
  MockManagerRepository mockManagerRepository;
  MockParkingLotRepository mockParkingLotRepository;
  WatchParkingLots usecase;

  setUp(() {
    mockManagerRepository = MockManagerRepository();
    mockParkingLotRepository = MockParkingLotRepository();
    usecase = WatchParkingLots(mockParkingLotRepository, mockManagerRepository);
  });

  test('should call read on ManagerRepository to get manager data', () {
    when(mockManagerRepository.read()).thenAnswer((_) async => Right(manager));

    usecase.call();

    verify(mockManagerRepository.read());
    verifyNoMoreInteractions(mockManagerRepository);
  });

  test('should call watchAll on ParkingLotRepository', () {
    when(mockManagerRepository.read()).thenAnswer((_) async => Right(manager));
    // when(mockParkingLotRepository.watchAll(any)).thenAnswer((_) async* {
    //   yield Right([parkingLot]);
    // });

    usecase();

    verify(mockParkingLotRepository.watchAll(manager));
  });
}
