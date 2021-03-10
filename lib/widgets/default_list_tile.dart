import 'package:flutter/material.dart';

import '../res/constants.dart';
import '../res/theme.dart';

class DefaultListTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final void Function() onTap;
  final Widget trailing;
  final Widget leading;
  final List<IconButton> actions;

  const DefaultListTile({
    Key key,
    @required this.title,
    this.subtitle,
    this.onTap,
    this.leading,
    this.trailing,
    this.actions,
  })  : assert(!(trailing != null && actions != null)),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: Constants.defaultBorderRadius),
      child: ClipRRect(
        borderRadius: Constants.defaultBorderRadius,
        child: actions == null ? _renderListTile() : _renderContainer(),
      ),
    );
  }

  ListTile _renderListTile() {
    return ListTile(
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      subtitle: subtitle == null ? null : Text(subtitle),
      leading: leading,
      trailing: trailing,
      onTap: onTap,
      tileColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: Constants.defaultBorderRadius),
    );
  }

  Widget _renderContainer() {
    return ListTile(
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      subtitle: subtitle == null ? null : Text(subtitle),
      leading: leading,
      trailing: Row(mainAxisSize: MainAxisSize.min, children: actions),
      onTap: onTap,
      tileColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: Constants.defaultBorderRadius),
    );
    return Container(
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16)),
              Text(subtitle, style: const TextStyle(fontSize: 14, color: AppColors.textColor)),
            ],
          ),
          const Spacer(),
          ...actions,
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
    );
  }
}
