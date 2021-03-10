import 'package:flutter/material.dart';

import '../res/constants.dart';
import '../res/theme.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  final EdgeInsets padding;
  final double height;
  final double width;

  const DefaultButton({
    Key key,
    @required this.text,
    @required this.onPressed,
    this.padding,
    this.height = 46,
    this.width = double.infinity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      width: width,
      height: height,
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: Constants.defaultBorderRadius),
        child: Text(text, style: const TextStyle(fontWeight: FontWeight.w600)),
        color: AppColors.accentColor,
        colorBrightness: Brightness.dark,
        onPressed: onPressed,
      ),
    );
  }
}
