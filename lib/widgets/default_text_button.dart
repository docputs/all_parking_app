import 'package:flutter/material.dart';

import '../res/theme.dart';

class DefaultTextButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final void Function() onPressed;

  const DefaultTextButton({
    Key key,
    @required this.text,
    this.textColor = AppColors.accentColor,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(text, style: TextStyle(color: textColor, fontWeight: FontWeight.w600)),
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: const EdgeInsets.all(0),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        primary: AppColors.accentColor,
      ),
    );
  }
}
