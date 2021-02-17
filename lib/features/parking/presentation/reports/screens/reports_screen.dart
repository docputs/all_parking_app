import 'package:all_parking/widgets/current_parking_lot_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../res/messages.dart';
import '../../../../../service_locator.dart';
import '../../../../../widgets/app_scaffold.dart';
import '../../../../../widgets/default_drawer.dart';
import '../../../../../widgets/no_current_parking_lot_info.dart';
import '../../../domain/entities/parking_lot.dart';
import '../bloc/reports_bloc.dart';
import '../../../../../widgets/no_data_to_show.dart';
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
      builder: (parkingLot) => parkingLot.parkedVehicles.isEmpty() ? const NoDataToShow() : _buildReportsDashboard(parkingLot),
      noParkingLotWidget: const NoCurrentParkingLotInfo(),
    );
  }

  Widget _buildReportsDashboard(ParkingLot parkingLot) {
    return BlocProvider(
      create: (context) => getIt<ReportsBloc>()..add(ReportsEvent.initialized(parkingLot)),
      child: const ReportsDashboard(),
    );
  }
}
