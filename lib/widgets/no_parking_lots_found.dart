import 'package:all_parking/res/assets.dart';
import 'package:all_parking/res/messages.dart';
import 'package:all_parking/res/theme.dart';
import 'package:flutter/material.dart';

class NoParkingLotsFound extends StatelessWidget {
  const NoParkingLotsFound({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(Assets.vehicles),
        const SizedBox(height: 20),
        const Text(Messages.noParkingLotsFound, style: TextStyle(color: AppColors.textColor)),
        const SizedBox(height: 10),
        const Text(Messages.pressMoreToAddParkingLot, style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.textColor)),
      ],
    );
  }
}
