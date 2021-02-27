import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

import '../../../../utils/email_service.dart';
import '../../core/errors/parking_failure.dart';
import '../entities/manager.dart';
import '../entities/parking_lot.dart';
import '../repositories/i_manager_repository.dart';
import '../repositories/i_parking_lot_repository.dart';

@lazySingleton
class AddParkingLot {
  final IParkingLotRepository _parkingLotRepository;
  final IManagerRepository _managerRepository;
  final EmailService _emailService;

  AddParkingLot(this._parkingLotRepository, this._managerRepository, this._emailService);

  Manager _manager;
  ParkingLot _parkingLot;

  Future<Either<ParkingFailure, Unit>> call(ParkingLot parkingLot) async {
    final parkingLotEither = await _parkingLotRepository.create(parkingLot);
    return parkingLotEither.fold(
      (f) => left(f),
      (_) async {
        _parkingLot = parkingLot;
        final either = await caseParkingLotEitherSuccess(parkingLot);
        return either.fold(
          (f) => left(f),
          (_) async {
            await _sendWarningEmail();
            return right(_);
          },
        );
      },
    );
  }

  Future<Either<ParkingFailure, Unit>> caseParkingLotEitherSuccess(ParkingLot parkingLot) async {
    final managerEither = await _managerRepository.read();
    return managerEither.fold(
      (f) => left(f),
      (manager) async {
        final newList = manager.parkingLots.plusElement(parkingLot.id);
        final newManager = manager.copyWith(parkingLots: newList);
        _manager = newManager;
        return _managerRepository.update(newManager);
      },
    );
  }

  Future<void> _sendWarningEmail() async {
    if (_parkingLot != null && _manager != null) return _emailService.sendEmail(EmailModel(parkingLot: _parkingLot, manager: _manager));
  }
}
