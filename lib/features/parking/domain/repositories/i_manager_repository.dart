import 'package:dartz/dartz.dart';

import '../../core/errors/manager_failure.dart';
import '../entities/manager.dart';

abstract class IManagerRepository {
  Future<Either<ManagerFailure, Unit>> update(Manager manager);
  Future<Either<ManagerFailure, Manager>> read();
}
