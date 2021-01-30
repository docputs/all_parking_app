import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../core/errors/auth_failure.dart';
import '../entities/user.dart';
import '../repositories/i_user_repository.dart';

@lazySingleton
class GetCurrentUser {
  final IUserRepository _repository;

  const GetCurrentUser(this._repository) : assert(_repository != null);

  Future<Either<AuthFailure, User>> call() async {
    final userOption = await _repository.getCurrentUser();
    return userOption.fold(
      () => left(AuthFailure.notAuthenticated()),
      (user) => right(user),
    );
  }
}
