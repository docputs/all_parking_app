import 'package:all_parking/features/parking/core/errors/parking_failure.dart';
import 'package:flutter/material.dart';

class WatcherFailureWidget extends StatelessWidget {
  final ParkingFailure failure;

  const WatcherFailureWidget(this.failure, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(failure.message));
  }
}
