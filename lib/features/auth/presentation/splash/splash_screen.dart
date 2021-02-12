import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../res/constants.dart';
import '../../../parking/presentation/home/bloc/parking_lot_watcher_bloc.dart';
import '../auth_bloc.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    context.read<AuthBloc>().add(const AuthEvent.authCheckRequested());
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.when(
          initializing: () => null,
          authenticated: (_) {
            context.read<ParkingLotWatcherBloc>().add(const ParkingLotWatcherEvent.watchStarted());
            return Navigator.of(context).pushReplacementNamed(Constants.homeRoute);
          },
          unauthenticated: () => Navigator.of(context).pushReplacementNamed(Constants.signInRoute),
        );
      },
      child: const Scaffold(body: Center(child: CircularProgressIndicator())),
    );
  }
}
