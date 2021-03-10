import 'package:flutter/material.dart';

import '../../../../../../res/theme.dart';

class VehicleInfoItem extends StatelessWidget {
  final MapEntry<String, String> info;

  const VehicleInfoItem(this.info, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      title: Text(
        info.key,
        style: const TextStyle(color: AppColors.textColor),
      ),
      trailing: Text(
        info.value,
        style: const TextStyle(fontSize: 16),
      ),
    );
  }
}
