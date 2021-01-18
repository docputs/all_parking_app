// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'features/parking/domain/usecases/add_parking_lot.dart';
import 'features/auth/presentation/auth_bloc.dart';
import 'features/auth/domain/usecases/get_current_user.dart';
import 'features/parking/domain/repositories/i_manager_repository.dart';
import 'features/parking/domain/repositories/i_parking_lot_repository.dart';
import 'features/auth/domain/repositories/i_user_repository.dart';
import 'features/parking/data/repositories/manager_repository.dart';
import 'features/parking/data/repositories/parking_lot_repository.dart';
import 'service_locator.dart';
import 'features/auth/domain/usecases/sign_in.dart';
import 'features/auth/presentation/sign_in/bloc/sign_in_bloc.dart';
import 'features/auth/domain/usecases/sign_up.dart';
import 'features/auth/presentation/sign_up/bloc/sign_up_bloc.dart';
import 'features/auth/data/repositories/user_repository.dart';
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
  gh.lazySingleton<IManagerRepository>(
      () => ManagerRepository(get<FirebaseFirestore>()));
  gh.lazySingleton<IParkingLotRepository>(
      () => ParkingLotRepository(get<FirebaseFirestore>()));
  gh.lazySingleton<IUserRepository>(
      () => UserRepository(get<FirebaseAuth>(), get<FirebaseFirestore>()));
  gh.lazySingleton<Validators>(() => Validators());
  gh.lazySingleton<AddParkingLot>(() =>
      AddParkingLot(get<IParkingLotRepository>(), get<IManagerRepository>()));
  gh.factory<AuthBloc>(() => AuthBloc(get<IUserRepository>()));
  gh.lazySingleton<GetCurrentUser>(
      () => GetCurrentUser(get<IUserRepository>()));
  gh.lazySingleton<SignIn>(
      () => SignIn(get<Validators>(), get<IUserRepository>()));
  gh.factory<SignInBloc>(
      () => SignInBloc(signIn: get<SignIn>(), validators: get<Validators>()));
  gh.lazySingleton<SignUp>(
      () => SignUp(get<IUserRepository>(), get<Validators>()));
  gh.factory<SignUpBloc>(() => SignUpBloc(get<SignUp>(), get<Validators>()));
  return get;
}

class _$RegisterModule extends RegisterModule {}
