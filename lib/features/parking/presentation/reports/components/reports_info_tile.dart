import 'package:all_parking/res/theme.dart';
import 'package:flutter/material.dart';

class ReportsInfoTile extends StatelessWidget {
  final MapEntry<String, dynamic> info;

  const ReportsInfoTile(this.info, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      title: Text(info.key, style: const TextStyle(color: AppColors.textColor)),
      trailing: Text('${info.value}', style: const TextStyle(fontSize: 16)),
    );
  }
}
