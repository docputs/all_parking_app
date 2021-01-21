import 'package:all_parking/features/parking/core/errors/manager_failure.dart';
import 'package:all_parking/features/parking/core/errors/parking_failure.dart';
import 'package:all_parking/features/parking/domain/repositories/i_manager_repository.dart';
import 'package:all_parking/features/parking/domain/repositories/i_parking_lot_repository.dart';
import 'package:all_parking/features/parking/domain/usecases/add_parking_lot.dart';
import 'package:all_parking/res/messages.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import '../../../../fixtures/parking_lot_fixtures.dart';

class MockParkingLotRepository extends Mock implements IParkingLotRepository {}

class MockManagerRepository extends Mock implements IManagerRepository {}

void main() {
  AddParkingLot usecase;
  MockParkingLotRepository mockParkingLotRepository;
  MockManagerRepository mockManagerRepository;

  setUp(() {
    mockParkingLotRepository = MockParkingLotRepository();
    mockManagerRepository = MockManagerRepository();
    usecase = AddParkingLot(mockParkingLotRepository, mockManagerRepository);
  });

  group('success', () {
    setUp(() {
      when(mockParkingLotRepository.create(any)).thenAnswer((_) async => Right(unit));
      when(mockManagerRepository.update(any)).thenAnswer((_) async => Right(unit));
      when(mockManagerRepository.read()).thenAnswer((_) async => Right(manager));
    });

    test('should call create on repository', () async {
      await usecase(parkingLot);

      verify(mockParkingLotRepository.create(any));
    });

    test('should call read on ManagerRepository when ParkingLotRepository runs successfully', () async {
      await usecase(parkingLot);

      verify(mockManagerRepository.read());
    });

    test('should call update on ManagerRepository with new manager data', () async {
      await usecase(parkingLot);

      verify(mockManagerRepository.update(newManager));
    });

    test('should return unit when call runs successfully', () async {
      final result = await usecase(parkingLot);

      expect(result, Right(unit));
    });
  });

  group('failure', () {
    test('should return ParkingFailure when repository fails', () async {
      when(mockParkingLotRepository.create(any)).thenAnswer((_) async => Left(const ParkingFailure.serverFailure(Messages.serverFailure)));

      final result = await usecase(parkingLot);

      expect(result, Left(const ParkingFailure.serverFailure(Messages.serverFailure)));
    });

    test('should return ParkingFailure when ManagerRepository fails', () async {
      when(mockParkingLotRepository.create(any)).thenAnswer((_) async => Right(unit));
      when(mockManagerRepository.read()).thenAnswer((_) async => Right(manager));
      when(mockManagerRepository.update(any)).thenAnswer((_) async => Left(const ManagerFailure.serverFailure()));

      final result = await usecase(parkingLot);

      expect(result, Left(const ParkingFailure.serverFailure(Messages.serverFailure)));
    });
  });
}
