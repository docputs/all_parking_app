import 'package:flutter/material.dart';

import '../../../../../res/constants.dart';
import '../../../../../res/messages.dart';
import '../../../../../widgets/app_scaffold.dart';
import '../../../../../widgets/default_section_title.dart';
import '../../../domain/entities/parked_vehicle.dart';
import 'components/vehicle_info_item.dart';

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
          onPressed: () => Navigator.of(context).pushNamed(Constants.checkOutVehicleRoute, arguments: vehicle),
        ),
      ],
      title: Messages.vehicleDetailsScreenTitle,
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Column(
      children: Messages.generateVehicleInfoMap(vehicle).entries.map((e) {
        return Column(
          children: [
            DefaultSectionTitle(e.key),
            ...e.value.entries.map((e) => VehicleInfoItem(e)).toList(),
            const SizedBox(height: 40),
          ],
        );
      }).toList(),
    );
  }
}
