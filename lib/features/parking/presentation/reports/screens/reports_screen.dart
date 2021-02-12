import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../../../../../res/messages.dart';
import '../../../../../service_locator.dart';
import '../../../../../widgets/app_scaffold.dart';
import '../../../../../widgets/no_current_parking_lot_info.dart';
import '../../../domain/entities/parking_lot.dart';
import '../../current_parking_lot.dart';
import '../../../../../widgets/default_drawer.dart';
import '../bloc/reports_bloc.dart';
import 'components/no_reports_data.dart';
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
    return Consumer<CurrentParkingLot>(
      builder: (context, currentParkingLot, _) {
        return currentParkingLot.value.fold(
          () => const NoCurrentParkingLotInfo(),
          (parkingLot) => parkingLot.parkedVehicles.isEmpty() ? const NoReportsData() : _buildReportsDashboard(parkingLot),
        );
      },
    );
  }

  Widget _buildReportsDashboard(ParkingLot parkingLot) {
    return BlocProvider(
      create: (context) => getIt<ReportsBloc>()..add(ReportsEvent.initialized(parkingLot)),
      child: const ReportsDashboard(),
    );
  }
}
