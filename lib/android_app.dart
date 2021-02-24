import 'package:all_parking/app_config.dart';
import 'package:all_parking/features/auth/presentation/employee/employee_auth_bloc.dart';
import 'package:all_parking/features/parking/presentation/core/parking_lots/parking_lots_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

import 'app_routes.dart';
import 'features/auth/presentation/auth_bloc.dart';
import 'features/parking/presentation/current_parking_lot.dart';
import 'features/parking/presentation/home/bloc/vehicles_watcher_bloc.dart';
import 'res/theme.dart';
import 'service_locator.dart';

class AndroidApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<AuthBloc>()),
        BlocProvider(create: (context) => getIt<EmployeeAuthBloc>()),
        BlocProvider(create: (context) => getIt<VehiclesWatcherBloc>()),
        BlocProvider(create: (context) => getIt<ParkingLotsBloc>()),
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
