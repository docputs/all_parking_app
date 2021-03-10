import 'package:flutter/material.dart';

import '../res/messages.dart';

class NoCurrentParkingLotInfo extends StatelessWidget {
  const NoCurrentParkingLotInfo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(Messages.noCurrentParkingLotText));
  }
}
