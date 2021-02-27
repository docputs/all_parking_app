import 'package:flutter/material.dart';

import '../../../../core/errors/parking_failure.dart';

class WatcherFailureWidget extends StatelessWidget {
  final ParkingFailure failure;

  const WatcherFailureWidget(this.failure, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(failure.message));
  }
}
