import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app_routes.dart';
import 'features/auth/presentation/auth_bloc.dart';
import 'res/theme.dart';
import 'service_locator.dart';

class AndroidApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'All Parking',
        theme: buildThemeData(),
        routes: buildAppRoutes(),
      ),
    );
  }
}
