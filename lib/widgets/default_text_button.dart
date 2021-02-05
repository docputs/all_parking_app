import 'package:all_parking/res/theme.dart';
import 'package:flutter/material.dart';

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
      child: Text('ALTERAR', style: TextStyle(color: textColor)),
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: const EdgeInsets.all(0),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        primary: AppColors.accentColor,
      ),
    );
  }
}
