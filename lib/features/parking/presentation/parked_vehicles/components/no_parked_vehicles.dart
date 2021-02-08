import 'package:all_parking/res/assets.dart';
import 'package:all_parking/res/messages.dart';
import 'package:all_parking/res/theme.dart';
import 'package:flutter/material.dart';

class NoParkedVehicles extends StatelessWidget {
  const NoParkedVehicles({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(Assets.vehicles),
        const Text(Messages.noParkedVehicles, style: TextStyle(color: AppColors.textColor)),
      ],
    );
  }
}
