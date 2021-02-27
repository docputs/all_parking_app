import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../res/messages.dart';
import '../../../../../service_locator.dart';
import '../../../../../widgets/app_scaffold.dart';
import '../../../../../widgets/current_parking_lot_builder.dart';
import '../../../../../widgets/default_drawer.dart';
import '../../../../../widgets/inactive_vehicles_builder.dart';
import '../../../../../widgets/no_data_to_show.dart';
import '../../../domain/entities/parked_vehicles_list.dart';
import '../../../domain/entities/parking_lot.dart';
import '../../bloc/vehicles_watcher/vehicles_watcher_bloc.dart';
import '../../context_extension.dart';
import '../bloc/reports_bloc.dart';
import 'components/reports_dashboard.dart';

class ReportsScreen extends StatefulWidget {
  const ReportsScreen({Key key}) : super(key: key);

  @override
  _ReportsScreenState createState() => _ReportsScreenState();
}

class _ReportsScreenState extends State<ReportsScreen> {
  @override
  void initState() {
    super.initState();
    context.inactiveVehicles.add(VehiclesWatcherEvent.watchStarted(null));
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: Messages.reportsScreenTitle,
      drawer: const DefaultDrawer(),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return CurrentParkingLotBuilder(
      builder: (parkingLot) => InactiveVehiclesBuilder(
        onSuccess: (vehicles) => vehicles.isEmpty ? const NoDataToShow() : _buildReportsDashboard(vehicles, parkingLot),
      ),
    );
  }

  Widget _buildReportsDashboard(InactiveParkedVehicles vehicles, ParkingLot parkingLot) {
    return BlocProvider(
      create: (context) => getIt<ReportsBloc>()..add(ReportsEvent.initialized(parkingLot: parkingLot, vehicles: vehicles)),
      child: const ReportsDashboard(),
    );
  }
}
