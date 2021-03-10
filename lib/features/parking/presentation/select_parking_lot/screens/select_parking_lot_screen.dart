import 'package:flutter/material.dart';

import '../../../../../res/messages.dart';
import '../../../../../widgets/app_scaffold.dart';
import '../../../../../widgets/parking_lot_list_builder.dart';

class SelectParkingLotScreen extends StatelessWidget {
  const SelectParkingLotScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      scrollable: false,
      title: Messages.selectParkingLotScreenTitle,
      body: const ParkingLotListBuilder(headerText: Messages.selectParkingLotYourParkingLotsHeader),
    );
  }
}
