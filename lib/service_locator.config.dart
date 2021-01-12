// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'features/auth/domain/repositories/i_user_repository.dart';
import 'service_locator.dart';
import 'features/auth/domain/usecases/sign_in.dart';
import 'features/auth/domain/usecases/sign_up.dart';
import 'features/auth/data/user_repository.dart';
import 'features/auth/core/util/validators.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<FirebaseAuth>(() => registerModule.firebaseAuth);
  gh.lazySingleton<FirebaseFirestore>(() => registerModule.firebaseFirestore);
  gh.lazySingleton<IUserRepository>(() => UserRepository(get<FirebaseAuth>()));
  gh.lazySingleton<Validators>(() => Validators());
  gh.lazySingleton<SignIn>(
      () => SignIn(get<Validators>(), get<IUserRepository>()));
  gh.lazySingleton<SignUp>(
      () => SignUp(get<IUserRepository>(), get<Validators>()));
  return get;
}

class _$RegisterModule extends RegisterModule {}
