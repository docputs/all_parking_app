import 'package:all_parking/features/parking/domain/entities/parked_vehicles_list.dart';
import 'package:flutter/material.dart';

import '../../../../../../res/messages.dart';
import '../../../../../../res/theme.dart';
import '../../../../../../widgets/default_card.dart';
import '../../../../domain/entities/parking_lot.dart';
import 'gauge_painter.dart';

class CardsDisplay extends StatelessWidget {
  final ParkingLot parkingLot;
  final ActiveParkedVehicles activeVehicles;

  const CardsDisplay(this.parkingLot, this.activeVehicles, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultCard(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: CustomPaint(
              painter: GaugePainter(ocuppied: activeVehicles.value.size, totalAmount: parkingLot.availableSpots),
              child: const SizedBox(width: 100, height: 100),
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FittedBox(
                  child: Text(
                    Messages.remainingCards(parkingLot, activeVehicles),
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                ),
                Text(
                  Messages.usedCards(parkingLot, activeVehicles),
                  style: const TextStyle(color: AppColors.textColor, fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
