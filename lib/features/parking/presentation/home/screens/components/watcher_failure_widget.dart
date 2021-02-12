import 'package:all_parking/widgets/default_drawer.dart';
import 'package:all_parking/res/messages.dart';
import 'package:flutter/material.dart';

import 'package:all_parking/features/parking/core/errors/parking_failure.dart';

class WatcherFailureWidget extends StatelessWidget {
  final ParkingFailure failure;

  const WatcherFailureWidget(this.failure, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(failure.message));
  }
}
