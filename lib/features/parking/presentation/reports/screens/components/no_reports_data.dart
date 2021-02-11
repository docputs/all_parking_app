import 'package:flutter/material.dart';

import '../../../../../../res/messages.dart';

class NoReportsData extends StatelessWidget {
  const NoReportsData({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text(Messages.reportsNoAvailableData));
  }
}
