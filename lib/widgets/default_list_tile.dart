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
    return ListTile(
      title: Text(title, style: TextStyle(fontWeight: FontWeight.w500)),
      contentPadding: const EdgeInsets.all(0),
      subtitle: subtitle == null ? null : Text(subtitle),
      leading: leading,
      trailing: trailing,
      onTap: onTap,
    );
  }
}
