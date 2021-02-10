import 'package:all_parking/features/parking/presentation/current_parking_lot.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

import 'app_routes.dart';
import 'features/auth/presentation/auth_bloc.dart';
import 'features/parking/presentation/home/bloc/parking_lot_watcher_bloc.dart';
import 'res/theme.dart';
import 'service_locator.dart';

class AndroidApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested())),
        BlocProvider(create: (context) => getIt<ParkingLotWatcherBloc>()),
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
          title: 'All Parking',
          theme: buildThemeData(),
          onGenerateRoute: generateRoutes,
        ),
      ),
    );
  }
}
