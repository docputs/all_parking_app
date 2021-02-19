// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'features/parking/presentation/manage_employees/bloc/add_employee/add_employee_bloc.dart';
import 'features/parking/domain/usecases/add_parking_lot.dart';
import 'features/parking/presentation/add_parking_lot/bloc/add_parking_lot_bloc.dart';
import 'app_navigator.dart';
import 'features/auth/presentation/auth_bloc.dart';
import 'features/auth/domain/usecases/auto_sign_in_employee.dart';
import 'features/parking/presentation/check-in/bloc/check_in_bloc.dart';
import 'features/parking/domain/usecases/check_in_vehicle.dart';
import 'features/parking/presentation/check_out/bloc/check_out_bloc.dart';
import 'features/parking/domain/usecases/check_out_vehicle.dart';
import 'features/parking/presentation/current_parking_lot.dart';
import 'features/parking/domain/usecases/delete_employee.dart';
import 'features/parking/domain/usecases/delete_parking_lot.dart';
import 'features/parking/domain/usecases/edit_parking_lot.dart';
import 'features/auth/presentation/employee/employee_auth_bloc.dart';
import 'features/auth/data/repositories/employee_auth_repository.dart';
import 'features/parking/data/repositories/employee_repository.dart';
import 'features/parking/domain/usecases/fetch_current_manager.dart';
import 'features/parking/domain/usecases/fetch_parking_lots.dart';
import 'features/auth/domain/usecases/get_current_user.dart';
import 'features/auth/domain/repositories/i_employee_auth_repository.dart';
import 'features/parking/domain/repositories/i_employee_repository.dart';
import 'features/auth/domain/repositories/i_manager_auth_repository.dart';
import 'features/parking/domain/repositories/i_manager_repository.dart';
import 'features/parking/domain/repositories/i_parking_lot_repository.dart';
import 'features/parking/presentation/manage_employees/bloc/manage_employees_bloc.dart';
import 'features/parking/presentation/manage_parking_lots/bloc/manage_parking_lots_bloc.dart';
import 'features/parking/data/repositories/manager_repository.dart';
import 'features/parking/data/repositories/parking_lot_repository.dart';
import 'features/parking/presentation/home/bloc/parking_lot_watcher_bloc.dart';
import 'service_locator.dart';
import 'features/parking/presentation/reports/bloc/reports_bloc.dart';
import 'features/auth/presentation/manager/sign_in/bloc/sign_in_bloc.dart';
import 'features/auth/domain/usecases/sign_in_employee.dart';
import 'features/auth/presentation/employee/sign_in/bloc/sign_in_employee_bloc.dart';
import 'features/auth/domain/usecases/sign_in_manager.dart';
import 'features/auth/presentation/manager/sign_up/bloc/sign_up_bloc.dart';
import 'features/auth/domain/usecases/sign_up_employee.dart';
import 'features/auth/domain/usecases/sign_up_manager.dart';
import 'features/splash/presentation/splash_bloc/splash_bloc.dart';
import 'features/auth/data/repositories/user_repository.dart';
import 'features/parking/domain/usecases/watch_all_parking_lots.dart';
import 'features/parking/domain/usecases/watch_parking_lot.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

Future<GetIt> $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) async {
  final gh = GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<AppNavigator>(() => AppNavigator());
  gh.lazySingleton<CurrentParkingLot>(() => CurrentParkingLot());
  gh.lazySingleton<FirebaseAuth>(() => registerModule.firebaseAuth);
  gh.lazySingleton<FirebaseFirestore>(() => registerModule.firebaseFirestore);
  gh.lazySingleton<IEmployeeRepository>(
      () => EmployeeRepository(get<FirebaseFirestore>()));
  gh.lazySingleton<IManagerAuthRepository>(
      () => UserRepository(get<FirebaseAuth>(), get<FirebaseFirestore>()));
  gh.lazySingleton<IManagerRepository>(
      () => ManagerRepository(get<FirebaseFirestore>(), get<FirebaseAuth>()));
  gh.lazySingleton<IParkingLotRepository>(
      () => ParkingLotRepository(get<FirebaseFirestore>()));
  gh.factory<ReportsBloc>(() => ReportsBloc());
  final resolvedSharedPreferences = await registerModule.prefs;
  gh.factory<SharedPreferences>(() => resolvedSharedPreferences);
  gh.lazySingleton<SignInManager>(
      () => SignInManager(get<IManagerAuthRepository>()));
  gh.lazySingleton<SignUpManager>(
      () => SignUpManager(get<IManagerAuthRepository>()));
  gh.factory<SplashBloc>(() => SplashBloc());
  gh.lazySingleton<WatchAllParkingLots>(() => WatchAllParkingLots(
      get<IParkingLotRepository>(), get<IManagerRepository>()));
  gh.lazySingleton<WatchParkingLot>(() =>
      WatchParkingLot(get<IParkingLotRepository>(), get<IManagerRepository>()));
  gh.lazySingleton<AddParkingLot>(() =>
      AddParkingLot(get<IParkingLotRepository>(), get<IManagerRepository>()));
  gh.factory<AuthBloc>(() => AuthBloc(get<IManagerAuthRepository>()));
  gh.lazySingleton<CheckInVehicle>(() =>
      CheckInVehicle(get<IParkingLotRepository>(), get<CurrentParkingLot>()));
  gh.lazySingleton<CheckOutVehicle>(() =>
      CheckOutVehicle(get<IParkingLotRepository>(), get<CurrentParkingLot>()));
  gh.lazySingleton<DeleteEmployee>(() =>
      DeleteEmployee(get<IManagerRepository>(), get<IEmployeeRepository>()));
  gh.lazySingleton<DeleteParkingLot>(() => DeleteParkingLot(
      get<IParkingLotRepository>(), get<IManagerRepository>()));
  gh.lazySingleton<EditParkingLot>(
      () => EditParkingLot(get<IParkingLotRepository>()));
  gh.lazySingleton<FetchCurrentManager>(
      () => FetchCurrentManager(get<IManagerRepository>()));
  gh.lazySingleton<FetchParkingLots>(() => FetchParkingLots(
      get<IParkingLotRepository>(), get<IManagerRepository>()));
  gh.lazySingleton<GetCurrentUser>(
      () => GetCurrentUser(get<IManagerAuthRepository>()));
  gh.lazySingleton<IEmployeeAuthRepository>(() => EmployeeAuthRepository(
      get<SharedPreferences>(), get<FirebaseFirestore>()));
  gh.factory<ManageEmployeesBloc>(() =>
      ManageEmployeesBloc(get<DeleteEmployee>(), get<FetchCurrentManager>()));
  gh.factory<ManageParkingLotsBloc>(
      () => ManageParkingLotsBloc(get<DeleteParkingLot>()));
  gh.factory<ParkingLotWatcherBloc>(
      () => ParkingLotWatcherBloc(get<WatchAllParkingLots>()));
  gh.factory<SignInBloc>(() => SignInBloc(get<SignInManager>()));
  gh.lazySingleton<SignInEmployee>(
      () => SignInEmployee(get<IEmployeeAuthRepository>()));
  gh.factory<SignInEmployeeBloc>(
      () => SignInEmployeeBloc(get<SignInEmployee>()));
  gh.factory<SignUpBloc>(() => SignUpBloc(get<SignUpManager>()));
  gh.lazySingleton<SignUpEmployee>(() => SignUpEmployee(
        get<FetchCurrentManager>(),
        get<IEmployeeRepository>(),
        get<IManagerRepository>(),
      ));
  gh.factory<AddEmployeeBloc>(() => AddEmployeeBloc(get<SignUpEmployee>()));
  gh.factory<AddParkingLotBloc>(
      () => AddParkingLotBloc(get<AddParkingLot>(), get<EditParkingLot>()));
  gh.lazySingleton<AutoSignInEmployee>(
      () => AutoSignInEmployee(get<IEmployeeAuthRepository>()));
  gh.factory<CheckInBloc>(() => CheckInBloc(get<CheckInVehicle>()));
  gh.factory<CheckOutBloc>(() => CheckOutBloc(get<CheckOutVehicle>()));
  gh.factory<EmployeeAuthBloc>(() => EmployeeAuthBloc(
      get<IEmployeeAuthRepository>(), get<AutoSignInEmployee>()));
  return get;
}

class _$RegisterModule extends RegisterModule {}
