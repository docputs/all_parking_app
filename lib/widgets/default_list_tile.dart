import 'package:flutter/material.dart';

class DefaultListTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final void Function() onTap;

  const DefaultListTile({
    Key key,
    @required this.title,
    this.subtitle,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      contentPadding: const EdgeInsets.all(0),
      subtitle: Text(subtitle),
      onTap: onTap,
    );
  }
}
