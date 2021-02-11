import 'package:flutter/material.dart';

import '../../../../../../res/messages.dart';
import '../../../../../../res/theme.dart';
import '../../../../../../widgets/default_card.dart';
import '../../../../domain/entities/parking_lot.dart';
import 'gauge_painter.dart';

class CardsDisplay extends StatelessWidget {
  final ParkingLot parkingLot;

  const CardsDisplay(this.parkingLot, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultCard(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomPaint(
            painter: GaugePainter(ocuppied: parkingLot.activeParkedVehicles().size, totalAmount: parkingLot.availableSpots),
            child: const SizedBox(width: 100, height: 100),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(Messages.remainingCards(parkingLot), style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
              Text(Messages.usedCards(parkingLot), style: const TextStyle(color: AppColors.textColor, fontSize: 12)),
            ],
          ),
        ],
      ),
    );
  }
}
