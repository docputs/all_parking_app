import 'package:flutter/material.dart';

import '../../../../../../res/messages.dart';
import '../../../../../../widgets/default_section_title.dart';
import '../../../../../../widgets/parked_vehicle_tile.dart';
import '../../../../domain/entities/parked_vehicle.dart';

class ParkedVehiclesDashboard extends StatelessWidget {
  final List<ParkedVehicle> parkedVehicles;

  const ParkedVehiclesDashboard(this.parkedVehicles, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const DefaultSectionTitle(Messages.parkedVehiclesAllVehiclesLabel),
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
