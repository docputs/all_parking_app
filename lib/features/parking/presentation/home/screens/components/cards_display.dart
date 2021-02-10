import 'package:all_parking/features/parking/domain/entities/parking_lot.dart';
import 'package:all_parking/features/parking/presentation/home/screens/components/gauge_painter.dart';
import 'package:all_parking/res/messages.dart';
import 'package:all_parking/res/theme.dart';
import 'package:all_parking/widgets/default_card.dart';
import 'package:flutter/material.dart';

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
