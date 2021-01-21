import 'package:all_parking/res/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../auth_bloc.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initializing: (_) {},
          authenticated: (_) => Navigator.of(context).pushReplacementNamed(Constants.homeRoute),
          unauthenticated: (_) async => Navigator.of(context).pushReplacementNamed(Constants.signInRoute),
        );
      },
      child: Scaffold(body: Center(child: CircularProgressIndicator())),
    );
  }
}
