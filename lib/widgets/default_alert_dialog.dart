import 'package:flutter/material.dart';

import '../res/constants.dart';
import '../res/theme.dart';

class DefaultAlertDialog extends StatelessWidget {
  final String title;
  final String message;
  final String rightButtonText;
  final String leftButtonText;
  final bool useWarningButton;

  const DefaultAlertDialog({
    Key key,
    @required this.title,
    @required this.message,
    @required this.rightButtonText,
    @required this.leftButtonText,
    this.useWarningButton = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Text(message),
      actions: [
        FlatButton(
          child: Text(leftButtonText, style: const TextStyle(color: AppColors.primaryColor)),
          onPressed: () => Navigator.of(context).pop(false),
        ),
        useWarningButton
            ? FlatButton(
                child: Text(rightButtonText, style: const TextStyle(color: AppColors.errorColor)),
                onPressed: () => Navigator.of(context).pop(true),
              )
            : RaisedButton(
                color: AppColors.primaryColor,
                child: Text(rightButtonText, style: const TextStyle(color: Colors.white)),
                onPressed: () => Navigator.of(context).pop(true),
              ),
      ],
      shape: RoundedRectangleBorder(borderRadius: Constants.defaultBorderRadius),
    );
  }
}
