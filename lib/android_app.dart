import 'service_locator.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/auth/presentation/auth_bloc.dart';
import 'routes/router.gr.dart' as rt;

class AndroidApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'All Parking',
        theme: _theme(),
        builder: ExtendedNavigator.builder(router: rt.Router()),
      ),
    );
  }

  ThemeData _theme() {
    return ThemeData();
  }
}
