import 'package:all_parking/widgets/default_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../../../res/assets.dart';
import '../../../../../../res/constants.dart';
import '../../../../../../res/messages.dart';
import '../../../../../../res/theme.dart';
import '../../../../../../widgets/default_section_title.dart';
import '../../../../../../widgets/default_text_button.dart';
import '../../../../../../widgets/parked_vehicle_tile.dart';
import '../../../../domain/entities/parking_lot.dart';
import 'cards_display.dart';

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
        CardsDisplay(parkingLot),
        const SizedBox(height: 60),
        _buildParkedVehicleHeader(context),
        parkingLot.isEmpty() ? _buildEmptyWarning(context) : _buildParkedVehicleList(),
      ],
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

  Widget _buildEmptyWarning(BuildContext context) {
    return DefaultCard(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          Image.asset(Assets.noData, width: MediaQuery.of(context).size.width / 2),
          const SizedBox(height: 10),
          const Text(Messages.noParkedVehicles, style: TextStyle(color: AppColors.textColor)),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildParkedVehicleList() {
    final parkedVehicles = parkingLot.activeParkedVehicles();
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => ParkedVehicleTile(parkedVehicles[index]),
      itemCount: parkedVehicles.size <= 5 ? parkedVehicles.size : 5,
    );
  }
}
