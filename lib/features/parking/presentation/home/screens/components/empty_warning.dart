import 'package:all_parking/res/assets.dart';
import 'package:all_parking/res/messages.dart';
import 'package:all_parking/res/theme.dart';
import 'package:all_parking/widgets/default_card.dart';
import 'package:flutter/material.dart';

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
