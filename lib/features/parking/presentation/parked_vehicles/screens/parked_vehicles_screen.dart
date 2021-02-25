import 'package:all_parking/widgets/active_vehicles_builder.dart';
import 'package:flutter/material.dart';

import '../../../../../res/messages.dart';
import '../../../../../widgets/app_scaffold.dart';
import '../../../../../widgets/default_drawer.dart';
import 'components/no_parked_vehicles.dart';
import 'components/parked_vehicles_dashboard.dart';

class ParkedVehiclesScreen extends StatelessWidget {
  const ParkedVehiclesScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      scrollable: false,
      drawer: const DefaultDrawer(),
      title: Messages.parkedVehiclesScreenTitle,
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return ActiveVehiclesBuilder(
      onSuccess: (vehicles) => vehicles.isEmpty ? const NoParkedVehicles() : ParkedVehiclesDashboard(vehicles.value.asList()),
    );
  }
}
