import 'package:all_parking/features/auth/core/errors/auth_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SignInEmployee {
  Future<Either<AuthFailure, Unit>> call() {
    
  }
}
