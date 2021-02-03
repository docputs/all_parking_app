import 'package:all_parking/res/constants.dart';
import 'package:all_parking/res/theme.dart';
import 'package:flutter/material.dart';

class DefaultListTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final void Function() onTap;
  final Widget trailing;
  final Widget leading;

  const DefaultListTile({
    Key key,
    @required this.title,
    this.subtitle,
    this.onTap,
    this.trailing,
    this.leading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shadowColor: AppColors.shadowColor,
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: Constants.defaultBorderRadius),
      child: ClipRRect(
        borderRadius: Constants.defaultBorderRadius,
        child: ListTile(
          title: Text(title, style: TextStyle(fontWeight: FontWeight.w500)),
          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          subtitle: subtitle == null ? null : Text(subtitle),
          leading: leading,
          trailing: trailing,
          onTap: onTap,
          tileColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: Constants.defaultBorderRadius),
        ),
      ),
    );
  }
}
