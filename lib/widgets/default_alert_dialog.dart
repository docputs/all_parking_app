import 'package:all_parking/res/theme.dart';
import 'package:flutter/material.dart';

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
          child: Text(leftButtonText, style: TextStyle(color: AppColors.primaryColor)),
          onPressed: () => Navigator.of(context).pop(false),
        ),
        useWarningButton
            ? FlatButton(
                child: Text(rightButtonText, style: TextStyle(color: AppColors.errorColor)),
                onPressed: () => Navigator.of(context).pop(true),
              )
            : RaisedButton(
                color: AppColors.primaryColor,
                child: Text(rightButtonText, style: TextStyle(color: Colors.white)),
                onPressed: () => Navigator.of(context).pop(true),
              ),
      ],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    );
  }
}
