import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../routes/router.gr.dart';
import '../auth_bloc.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initializing: (_) {},
          authenticated: (_) {
            ExtendedNavigator.of(context).replace(Routes.homeScreen);
          },
          unauthenticated: (_) async {
            ExtendedNavigator.of(context).replace(Routes.signInScreen);
          },
        );
      },
      child: Scaffold(body: Center(child: CircularProgressIndicator())),
    );
  }
}
