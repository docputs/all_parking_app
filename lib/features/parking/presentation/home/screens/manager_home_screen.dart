import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';

import '../../../../../res/constants.dart';
import '../../../../auth/presentation/auth_bloc.dart';
import '../../../domain/entities/parking_lot.dart';
import '../../bloc/parking_lots/manager/manager_parking_lots_bloc.dart';
import '../../bloc/parking_lots/parking_lots_event.dart';
import '../../bloc/parking_lots/parking_lots_state.dart';
import '../../bloc/vehicles_watcher/vehicles_watcher_bloc.dart';
import '../../context_extension.dart';
import 'home_screen.dart';

class ManagerHomeScreen extends StatefulWidget {
  const ManagerHomeScreen({Key key}) : super(key: key);

  @override
  _ManagerHomeScreenState createState() => _ManagerHomeScreenState();
}

class _ManagerHomeScreenState extends State<ManagerHomeScreen> {
  @override
  void initState() {
    super.initState();
    context.read<ManagerParkingLotsBloc>().add(const ParkingLotsEvent.fetchRequested());
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) => state.maybeWhen(
        orElse: () => null,
        unauthenticated: () => Navigator.of(context).pushReplacementNamed(Constants.signInRoute),
      ),
      child: BlocListener<ManagerParkingLotsBloc, ParkingLotsState<KtList<ParkingLot>>>(
        listener: (context, state) => state.maybeWhen(
          orElse: () => null,
          success: (parkingLots) {
            final list = parkingLots as KtList<ParkingLot>;
            return context.activeVehicles.add(VehiclesWatcherEvent.watchStarted(list.first()));
          },
        ),
        child: const HomeScreen(),
      ),
    );
  }
}
