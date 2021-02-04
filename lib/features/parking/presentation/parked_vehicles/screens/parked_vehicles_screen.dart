import 'package:all_parking/features/parking/domain/entities/parking_lot.dart';
import 'package:all_parking/features/parking/presentation/current_parking_lot.dart';
import 'package:all_parking/features/parking/presentation/home/screens/components/default_drawer.dart';
import 'package:all_parking/features/parking/presentation/parked_vehicles/components/parked_vehicles_dashboard.dart';
import 'package:all_parking/widgets/app_scaffold.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

import '../../../../../service_locator.dart';

class ParkedVehiclesScreen extends StatelessWidget {
  const ParkedVehiclesScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      scrollable: false,
      drawer: const DefaultDrawer(),
      title: 'Veículos estacionados',
      body: ValueListenableBuilder<Option<ParkingLot>>(
        valueListenable: getIt<CurrentParkingLot>(),
        builder: (context, parkingLotOption, _) {
          return parkingLotOption.fold(
            () => const Center(child: Text('nenhum veiculo')),
            (parkingLot) => ParkedVehiclesDashboard(parkingLot.parkedVehicles),
          );
        },
      ),
    );
  }
}
