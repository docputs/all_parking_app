import 'package:all_parking/features/parking/domain/entities/parked_vehicle.dart';
import 'package:all_parking/widgets/default_section_title.dart';
import 'package:all_parking/widgets/parked_vehicle_tile.dart';
import 'package:flutter/material.dart';

class ParkedVehiclesDashboard extends StatelessWidget {
  final List<ParkedVehicle> parkedVehicles;

  const ParkedVehiclesDashboard(this.parkedVehicles, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const DefaultSectionTitle('Todos os veículos'),
        Expanded(
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) => ParkedVehicleTile(parkedVehicles[index]),
            itemCount: parkedVehicles.length,
          ),
        ),
      ],
    );
  }
}
