import 'package:all_parking/features/parking/core/errors/parking_failure.dart';
import 'package:all_parking/features/parking/data/models/order_by.dart';
import 'package:all_parking/features/parking/domain/entities/parking_lot.dart';
import 'package:all_parking/features/parking/domain/repositories/i_parking_lot_repository.dart';
import 'package:all_parking/features/parking/presentation/reports/view_models/reports_view_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class WatchActiveVehicles {
  final IParkingLotRepository _parkingLotRepository;

  const WatchActiveVehicles(this._parkingLotRepository);

  Stream<Either<ParkingFailure, ParkedVehiclesList>> call(ParkingLot parkingLot, [OrderBy orderBy]) {
    return _parkingLotRepository.watchActiveVehicles(parkingLot, orderBy);
  }
}
