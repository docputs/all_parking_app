import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

import 'app_config.dart';
import 'app_routes.dart';
import 'features/auth/presentation/auth_bloc.dart';
import 'features/auth/presentation/employee/employee_auth_bloc.dart';
import 'features/parking/presentation/bloc/parking_lots/employee/employee_parking_lot_bloc.dart';
import 'features/parking/presentation/bloc/parking_lots/manager/manager_parking_lots_bloc.dart';
import 'features/parking/presentation/bloc/vehicles_watcher/active_vehicles/active_vehicles_watcher_bloc.dart';
import 'features/parking/presentation/bloc/vehicles_watcher/inactive_vehicles/inactive_vehicles_watcher_bloc.dart';
import 'features/parking/presentation/current_parking_lot.dart';
import 'res/theme.dart';
import 'service_locator.dart';

class AndroidApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<AuthBloc>()),
        BlocProvider(create: (context) => getIt<EmployeeAuthBloc>()),
        BlocProvider(create: (context) => getIt<ActiveVehiclesWatcherBloc>()),
        BlocProvider(create: (context) => getIt<InactiveVehiclesWatcherBloc>()),
        BlocProvider(create: (context) => getIt<ManagerParkingLotsBloc>()),
        BlocProvider(create: (context) => getIt<EmployeeParkingLotBloc>()),
      ],
      child: ChangeNotifierProvider(
        create: (context) => getIt<CurrentParkingLot>(),
        child: MaterialApp(
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          supportedLocales: [const Locale('pt', 'BR')],
          debugShowCheckedModeBanner: false,
          title: AppConfig.title,
          theme: buildThemeData(),
          onGenerateRoute: generateRoutes,
        ),
      ),
    );
  }
}
