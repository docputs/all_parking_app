import 'package:all_parking/features/parking/domain/entities/parking_lot.dart';
import 'package:all_parking/res/assets.dart';
import 'package:all_parking/res/constants.dart';
import 'package:all_parking/res/messages.dart';
import 'package:all_parking/res/theme.dart';
import 'package:all_parking/widgets/default_section_title.dart';
import 'package:all_parking/widgets/parked_vehicle_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
        const DefaultSectionTitle('Cartões'),
        CardsDisplay(parkingLot),
        const SizedBox(height: 60),
        _buildParkedVehicleHeader(),
        parkingLot.parkedVehicles.isEmpty ? _buildEmptyWarning(context) : _buildParkedVehicleList(),
      ],
    );
  }

  Widget _buildParkedVehicleHeader() {
    return Row(
      children: [
        Expanded(child: const DefaultSectionTitle('Veículos estacionados')),
        Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Text('VER MAIS', style: TextStyle(color: AppColors.accentColor, fontWeight: FontWeight.bold)),
        ),
      ],
    );
  }

  Widget _buildEmptyWarning(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [Constants.defaultBoxShadow],
        borderRadius: Constants.defaultBorderRadius,
      ),
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
    return ListView.builder(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) => ParkedVehicleTile(parkingLot.parkedVehicles[index]),
      itemCount: parkingLot.parkedVehicles.length,
    );
  }
}
