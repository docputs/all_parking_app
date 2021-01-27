import 'package:flutter/material.dart';

class DrawerListTile extends StatelessWidget {
  final DrawerItem item;

  const DrawerListTile(this.item, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(item.title),
      leading: Icon(item.icon),
      onTap: item.customOnTap ?? () => Navigator.of(context).pushNamed(item.route),
    );
  }
}

class DrawerItem {
  final String title;
  final IconData icon;
  final String route;
  final void Function() customOnTap;

  const DrawerItem(
    this.title, {
    this.route,
    this.icon,
    this.customOnTap,
  }) : assert(!(route != null && customOnTap != null));
}
