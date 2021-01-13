import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../../../res/theme.dart';
import '../../../../../../routes/router.gr.dart';

class CreateAccountText extends StatefulWidget {
  const CreateAccountText({Key key}) : super(key: key);

  @override
  _CreateAccountTextState createState() => _CreateAccountTextState();
}

class _CreateAccountTextState extends State<CreateAccountText> {
  TapGestureRecognizer _tapGestureRecognizer;

  @override
  void initState() {
    super.initState();
    _tapGestureRecognizer = TapGestureRecognizer()
      ..onTap = () {
        ExtendedNavigator.of(context).replace(Routes.signUpScreen);
      };
  }

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Não tem uma conta? ',
            style: TextStyle(color: AppColors.textColor),
          ),
          TextSpan(
            text: 'Crie uma.',
            style: TextStyle(color: AppColors.accentColor, fontWeight: FontWeight.w500),
            recognizer: _tapGestureRecognizer,
          ),
        ],
      ),
    );
  }
}
