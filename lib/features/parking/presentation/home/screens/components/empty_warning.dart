import 'package:flutter/material.dart';

import '../../../../../../res/assets.dart';
import '../../../../../../res/messages.dart';
import '../../../../../../res/theme.dart';
import '../../../../../../widgets/default_card.dart';

class EmptyWarning extends StatelessWidget {
  const EmptyWarning({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
}
