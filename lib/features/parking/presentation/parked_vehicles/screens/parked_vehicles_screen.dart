import 'package:all_parking/features/parking/presentation/current_parking_lot.dart';
import 'package:all_parking/features/parking/presentation/home/screens/components/default_drawer.dart';
import 'package:all_parking/features/parking/presentation/parked_vehicles/components/no_parked_vehicles.dart';
import 'package:all_parking/features/parking/presentation/parked_vehicles/components/parked_vehicles_dashboard.dart';
import 'package:all_parking/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ParkedVehiclesScreen extends StatelessWidget {
  const ParkedVehiclesScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      scrollable: false,
      drawer: const DefaultDrawer(),
      title: 'Veículos estacionados',
      body: Consumer<CurrentParkingLot>(
        builder: (context, currentParkingLot, _) {
          return currentParkingLot.value.fold(
            () => const Center(child: Text('Nenhum estacionamento selecionado')),
            (parkingLot) {
              return parkingLot.isEmpty() ? const NoParkedVehicles() : ParkedVehiclesDashboard(parkingLot.activeParkedVehicles().asList());
            },
          );
        },
      ),
    );
  }
}
