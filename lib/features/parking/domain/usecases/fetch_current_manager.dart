import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../core/errors/parking_failure.dart';
import '../entities/manager.dart';
import '../repositories/i_manager_repository.dart';

@lazySingleton
class FetchCurrentManager {
  final IManagerRepository _managerRepository;

  const FetchCurrentManager(this._managerRepository) : assert(_managerRepository != null);

  Future<Either<ParkingFailure, Manager>> call() {
    return _managerRepository.read();
  }
}
