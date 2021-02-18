import 'package:all_parking/features/parking/core/errors/parking_failure.dart';
import 'package:all_parking/features/parking/domain/entities/manager.dart';
import 'package:all_parking/features/parking/domain/repositories/i_manager_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class FetchCurrentManager {
  final IManagerRepository _managerRepository;

  const FetchCurrentManager(this._managerRepository) : assert(_managerRepository != null);

  Future<Either<ParkingFailure, Manager>> call()  {
   return _managerRepository.read();
  }
}
