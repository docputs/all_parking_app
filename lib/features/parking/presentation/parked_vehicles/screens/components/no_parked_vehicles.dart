import 'package:flutter/material.dart';

import '../../../../../../res/assets.dart';
import '../../../../../../res/messages.dart';
import '../../../../../../res/theme.dart';

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
