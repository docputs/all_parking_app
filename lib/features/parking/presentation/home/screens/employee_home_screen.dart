import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../res/constants.dart';
import '../../../../auth/presentation/employee/employee_auth_bloc.dart';
import '../../../domain/entities/parking_lot.dart';
import '../../bloc/parking_lots/employee/employee_parking_lot_bloc.dart';
import '../../bloc/parking_lots/parking_lots_event.dart';
import '../../bloc/parking_lots/parking_lots_state.dart';
import '../../bloc/vehicles_watcher/vehicles_watcher_bloc.dart';
import '../../context_extension.dart';
import 'home_screen.dart';

class EmployeeHomeScreen extends StatefulWidget {
  const EmployeeHomeScreen({Key key}) : super(key: key);

  @override
  _EmployeeHomeScreenState createState() => _EmployeeHomeScreenState();
}

class _EmployeeHomeScreenState extends State<EmployeeHomeScreen> {
  @override
  void initState() {
    super.initState();
    context.read<EmployeeParkingLotBloc>().add(const ParkingLotsEvent.fetchRequested());
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<EmployeeAuthBloc, EmployeeAuthState>(
      listener: (context, state) => state.maybeWhen(
        unauthenticated: () => Navigator.of(context).pushReplacementNamed(Constants.signInRoute),
        orElse: () => null,
      ),
      child: BlocListener<EmployeeParkingLotBloc, ParkingLotsState<ParkingLot>>(
        listener: (context, state) => state.maybeWhen(
          orElse: () => null,
          success: (parkingLot) => context.activeVehicles.add(VehiclesWatcherEvent.watchStarted(parkingLot)),
        ),
        child: const HomeScreen(),
      ),
    );
  }
}
