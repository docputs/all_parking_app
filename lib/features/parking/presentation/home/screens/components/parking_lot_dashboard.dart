import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kt_dart/collection.dart';

import '../../../../../../res/constants.dart';
import '../../../../../../res/messages.dart';
import '../../../../../../widgets/active_vehicles_builder.dart';
import '../../../../../../widgets/default_section_title.dart';
import '../../../../../../widgets/default_text_button.dart';
import '../../../../../../widgets/parked_vehicle_tile.dart';
import '../../../../domain/entities/parked_vehicle.dart';
import '../../../../domain/entities/parking_lot.dart';
import 'cards_display.dart';
import 'empty_warning.dart';

class ParkingLotDashboard extends StatelessWidget {
  final ParkingLot parkingLot;

  const ParkingLotDashboard(this.parkingLot, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 20),
        const DefaultSectionTitle(Messages.cardsLabel),
        _buildCardsDisplay(),
        const SizedBox(height: 60),
        _buildParkedVehicleHeader(context),
        _buildVehiclesList(),
      ],
    );
  }

  Widget _buildCardsDisplay() {
    return ActiveVehiclesBuilder(
      onSuccess: (activeVehicles) => CardsDisplay(parkingLot, activeVehicles),
    );
  }

  Widget _buildParkedVehicleHeader(BuildContext context) {
    return Row(
      children: [
        Expanded(child: const DefaultSectionTitle(Messages.parkedVehiclesLabel)),
        Padding(
          padding: const EdgeInsets.only(bottom: 7),
          child: DefaultTextButton(
            text: Messages.moreButtonLabel,
            onPressed: () => Navigator.of(context).pushNamed(Constants.parkedVehiclesRoute),
          ),
        ),
      ],
    );
  }

  Widget _buildVehiclesList() {
    return ActiveVehiclesBuilder(
      onSuccess: (vehicles) => vehicles.isEmpty ? const EmptyWarning() : _buildParkedVehicleList(vehicles.value),
    );
  }

  Widget _buildParkedVehicleList(KtList<ParkedVehicle> vehicles) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => ParkedVehicleTile(vehicles[index]),
      itemCount: vehicles.size <= 5 ? vehicles.size : 5,
    );
  }
}
