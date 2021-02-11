import 'package:flutter/material.dart';

import '../../../../../../res/constants.dart';
import '../../../../../../res/theme.dart';

class SwipeToConfirm extends StatefulWidget {
  const SwipeToConfirm({Key key}) : super(key: key);

  @override
  _SwipeToConfirmState createState() => _SwipeToConfirmState();
}

class _SwipeToConfirmState extends State<SwipeToConfirm> {
  double width = 60;
  double start = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(borderRadius: Constants.defaultBorderRadius, color: Colors.black12),
          child: Center(
            child: Text(
              'Deslize para confirmar o check-out',
              style: const TextStyle(color: AppColors.textColor, fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
        ),
        AnimatedPositionedDirectional(
          start: start,
          width: width - start,
          curve: Curves.easeInOut,
          duration: Duration.zero,
          child: GestureDetector(
            onHorizontalDragStart: (details) {
              // print(details);
            },
            onHorizontalDragUpdate: (details) {
              setState(() {
                width += details.primaryDelta;
                start += details.primaryDelta;
              });
            },
            child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(borderRadius: Constants.defaultBorderRadius, color: AppColors.accentColor),
            ),
          ),
        ),
      ],
    );
  }
}
