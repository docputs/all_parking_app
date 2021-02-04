import 'package:all_parking/features/parking/domain/entities/parked_vehicle.dart';
import 'package:all_parking/features/parking/presentation/parked_vehicles/components/vehicle_info_item.dart';
import 'package:all_parking/res/messages.dart';
import 'package:all_parking/widgets/app_scaffold.dart';
import 'package:all_parking/widgets/default_section_title.dart';
import 'package:flutter/material.dart';

class ParkedVehicleDetailsScreen extends StatelessWidget {
  final ParkedVehicle vehicle;

  const ParkedVehicleDetailsScreen(this.vehicle, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      scrollable: true,
      actions: [
        IconButton(
          icon: Icon(Icons.north_east),
          onPressed: () {},
        ),
      ],
      title: 'Detalhes do veículo',
      body: Column(
        children: Messages.generateVehicleInfoMap(vehicle).entries.map((e) {
          return Column(
            children: [
              DefaultSectionTitle(e.key),
              ...e.value.entries.map((e) => VehicleInfoItem(e)).toList(),
              const SizedBox(height: 40),
            ],
          );
        }).toList(),
      ),
    );
  }
}
