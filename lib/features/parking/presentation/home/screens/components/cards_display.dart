import 'package:all_parking/features/parking/domain/entities/parking_lot.dart';
import 'package:all_parking/features/parking/presentation/home/screens/components/gauge_painter.dart';
import 'package:all_parking/res/constants.dart';
import 'package:all_parking/res/messages.dart';
import 'package:all_parking/res/theme.dart';
import 'package:flutter/material.dart';

class CardsDisplay extends StatelessWidget {
  final ParkingLot parkingLot;

  const CardsDisplay(this.parkingLot, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [Constants.defaultBoxShadow],
        borderRadius: Constants.defaultBorderRadius,
      ),
      padding: const EdgeInsets.all(25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomPaint(
            painter: GaugePainter(ocuppied: parkingLot.parkedVehicles.length, totalAmount: parkingLot.availableSpots),
            child: const SizedBox(width: 100, height: 100),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(Messages.remainingCards(parkingLot), style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
              Text(Messages.usedCards(parkingLot), style: TextStyle(color: AppColors.textColor, fontSize: 12)),
            ],
          ),
        ],
      ),
    );
  }
}
