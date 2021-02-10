import 'package:all_parking/features/parking/presentation/current_parking_lot.dart';
import 'package:all_parking/features/parking/presentation/home/screens/components/default_drawer.dart';
import 'package:all_parking/features/parking/presentation/reports/bloc/reports_bloc.dart';
import 'package:all_parking/features/parking/presentation/reports/components/no_reports_data.dart';
import 'package:all_parking/features/parking/presentation/reports/components/reports_dashboard.dart';
import 'package:all_parking/features/parking/presentation/reports/view_models/reports_view_model.dart';
import 'package:all_parking/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../../../../../service_locator.dart';

class ReportsScreen extends StatelessWidget {
  const ReportsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Relatórios',
      drawer: const DefaultDrawer(),
      body: Consumer<CurrentParkingLot>(
        builder: (context, currentParkingLot, _) {
          return currentParkingLot.value.fold(
            () => const Center(child: Text('Nenhum estacionamento selecionado')),
            (parkingLot) => parkingLot.parkedVehicles.isEmpty()
                ? const NoReportsData()
                : BlocProvider(
                    create: (context) => getIt<ReportsBloc>()..add(ReportsEvent.initialized(parkingLot)),
                    child: const ReportsDashboard(),
                  ),
          );
        },
      ),
    );
  }
}
