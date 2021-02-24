import 'package:all_parking/features/parking/domain/entities/parked_vehicle.dart';
import 'package:all_parking/widgets/current_parking_lot_builder.dart';
import 'package:all_parking/widgets/vehicles_watcher_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';

import '../../../../../res/messages.dart';
import '../../../../../service_locator.dart';
import '../../../../../widgets/app_scaffold.dart';
import '../../../../../widgets/default_drawer.dart';
import '../../../../../widgets/no_data_to_show.dart';
import '../../../domain/entities/parking_lot.dart';
import '../bloc/reports_bloc.dart';
import 'components/reports_dashboard.dart';

class ReportsScreen extends StatelessWidget {
  const ReportsScreen({Key key}) : super(key: key);

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
      builder: (parkingLot) => VehiclesWatcherBuilder(
        onSuccess: (vehicles) => vehicles.isEmpty ? const NoDataToShow() : _buildReportsDashboard(vehicles.value, parkingLot),
      ),
    );
  }

  Widget _buildReportsDashboard(KtList<ParkedVehicle> vehicles, ParkingLot parkingLot) {
    return BlocProvider(
      create: (context) => getIt<ReportsBloc>()..add(ReportsEvent.initialized(parkingLot: parkingLot, vehicles: vehicles)),
      child: const ReportsDashboard(),
    );
  }
}
