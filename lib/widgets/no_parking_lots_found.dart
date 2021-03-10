import 'package:flutter/material.dart';

import '../res/assets.dart';
import '../res/messages.dart';
import '../res/theme.dart';

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
