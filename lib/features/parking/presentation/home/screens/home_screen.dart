import 'package:all_parking/app_config.dart';
import 'package:all_parking/features/auth/presentation/employee/employee_auth_bloc.dart';
import 'package:all_parking/features/parking/presentation/bloc/parking_lots/parking_lots_bloc.dart';
import 'package:all_parking/features/parking/presentation/bloc/vehicles_watcher/vehicles_watcher_bloc.dart';
import 'package:all_parking/features/parking/presentation/home/screens/components/custom_fab.dart';
import 'package:all_parking/widgets/current_parking_lot_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';
import '../../context_extension.dart';

import '../../../../../res/constants.dart';
import '../../../../../widgets/app_scaffold.dart';
import '../../../../../widgets/default_drawer.dart';
import '../../../../auth/presentation/auth_bloc.dart';
import 'components/custom_app_bar.dart';
import 'components/parking_lot_dashboard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    context.read<ParkingLotsBloc>().add(const ParkingLotsEvent.fetchRequested());
  }

  @override
  Widget build(BuildContext context) {
    final child = BlocListener<ParkingLotsBloc, ParkingLotsState>(
      listener: (context, state) => state.maybeWhen(
        orElse: () => null,
        success: (parkingLots) => context.activeVehicles.add(VehiclesWatcherEvent.watchStarted(parkingLots.first())),
      ),
      child: AppScaffold(
        customAppBar: CustomAppBar(),
        drawer: const DefaultDrawer(),
        body: _buildBody(),
        floatingActionButton: const CustomFAB(),
      ),
    );

    return AppConfig.isManager
        ? BlocListener<AuthBloc, AuthState>(
            listener: (context, state) => state.maybeWhen(
              unauthenticated: () => Navigator.of(context).pushReplacementNamed(Constants.signInManagerRoute),
              orElse: () => null,
            ),
            child: child,
          )
        : BlocListener<EmployeeAuthBloc, EmployeeAuthState>(
            listener: (context, state) => state.maybeWhen(
              unauthenticated: () => Navigator.of(context).pushReplacementNamed(Constants.signInEmployeeRoute),
              orElse: () => null,
            ),
            child: child,
          );
  }

  Widget _buildBody() {
    return CurrentParkingLotBuilder(
      builder: (parkingLot) => ParkingLotDashboard(parkingLot),
    );
  }
}
