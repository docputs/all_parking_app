import 'package:flutter/material.dart';

import '../res/messages.dart';

class NoDataToShow extends StatelessWidget {
  const NoDataToShow({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text(Messages.noDataToShow));
  }
}
