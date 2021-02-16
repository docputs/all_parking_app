import 'package:all_parking/res/constants.dart';
import 'package:flutter/material.dart';

import 'package:all_parking/res/theme.dart';
import 'package:all_parking/widgets/default_text_field.dart';

class TextFieldAlertDialog extends StatelessWidget {
  final String title;
  final String fieldDescription;
  final String rightButtonLabel;
  final String leftButtonLabel;
  final void Function(String) onChanged;

  const TextFieldAlertDialog({
    Key key,
    @required this.title,
    this.fieldDescription,
    this.onChanged,
    this.rightButtonLabel,
    this.leftButtonLabel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      shape: RoundedRectangleBorder(borderRadius: Constants.defaultBorderRadius),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(fieldDescription),
          DefaultTextField(
            labelText: '',
            keyboardType: TextInputType.number,
            onChanged: onChanged,
          ),
        ],
      ),
      actions: [
        FlatButton(
          child: Text(leftButtonLabel, style: const TextStyle(color: AppColors.primaryColor)),
          onPressed: () => Navigator.of(context).pop(false),
        ),
        FlatButton(
          child: Text(rightButtonLabel, style: const TextStyle(color: AppColors.primaryColor)),
          onPressed: () => Navigator.of(context).pop(true),
        ),
      ],
    );
  }
}
