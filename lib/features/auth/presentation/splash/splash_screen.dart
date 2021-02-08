import 'package:all_parking/features/parking/presentation/home/bloc/parking_lot_watcher_bloc.dart';
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
        state.when(
          initializing: () {},
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
