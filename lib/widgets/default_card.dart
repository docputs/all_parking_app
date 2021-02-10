import 'package:all_parking/res/constants.dart';
import 'package:flutter/material.dart';

class DefaultCard extends StatelessWidget {
  final Widget child;
  final double elevation;
  final EdgeInsets padding;
  final Color cardColor;

  const DefaultCard({
    Key key,
    @required this.child,
    this.elevation = 10.0,
    this.padding = const EdgeInsets.all(25),
    this.cardColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      color: cardColor,
      shape: RoundedRectangleBorder(borderRadius: Constants.defaultBorderRadius),
      child: Padding(
        padding: padding,
        child: child,
      ),
    );
  }
}
