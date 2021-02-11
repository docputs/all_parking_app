import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../res/messages.dart';
import '../../../../../widgets/app_scaffold.dart';
import '../../current_parking_lot.dart';
import '../../home/screens/components/default_drawer.dart';
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
      body: Consumer<CurrentParkingLot>(
        builder: (context, currentParkingLot, _) {
          return currentParkingLot.value.fold(
            () => const Center(child: Text(Messages.noCurrentParkingLotText)),
            (parkingLot) {
              return parkingLot.isEmpty() ? const NoParkedVehicles() : ParkedVehiclesDashboard(parkingLot.activeParkedVehicles().asList());
            },
          );
        },
      ),
    );
  }
}
