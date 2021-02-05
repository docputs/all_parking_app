import 'package:all_parking/features/parking/core/errors/parking_failure.dart';
import 'package:all_parking/features/parking/domain/repositories/i_parking_lot_repository.dart';
import 'package:all_parking/features/parking/domain/usecases/check_out_vehicle.dart';
import 'package:all_parking/features/parking/presentation/current_parking_lot.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../../fixtures/parking_lot_fixtures.dart';

class MockParkingLotRepository extends Mock implements IParkingLotRepository {}

void main() {
  CheckOutVehicle usecase;
  CurrentParkingLot currentParkingLot;
  MockParkingLotRepository mockParkingLotRepository;

  setUp(() {
    currentParkingLot = CurrentParkingLot();
    mockParkingLotRepository = MockParkingLotRepository();
    usecase = CheckOutVehicle(mockParkingLotRepository, currentParkingLot);
  });

  group('CurrentParkingLot is not empty', () {
    setUp(() => currentParkingLot.setValue(Fixtures.parkingLot));

    test('should call update on repository with removed parked vehicle', () async {
      when(mockParkingLotRepository.update(any)).thenAnswer((_) async => Right(unit));

      final result = await usecase(Fixtures.parkedVehicle);

      expect(result, Right(unit));
      verify(mockParkingLotRepository.update(Fixtures.parkingLotWithRemovedParkedVehicle)).called(1);
      verifyNoMoreInteractions(mockParkingLotRepository);
    });
  });

  group('CurrentParkingLot is empty', () {
    test('should return ParkingFailure when there is no CurrentParkingLot', () async {
      final result = await usecase(Fixtures.parkedVehicle);

      expect(result, Left(ParkingFailure.noCurrentParkingLot()));
    });
  });
}
