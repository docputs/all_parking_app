import '../../../../../../res/constants.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../../../res/theme.dart';

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
    _tapGestureRecognizer = TapGestureRecognizer()..onTap = () => Navigator.of(context).pushNamed(Constants.signUpRoute);
  }

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Não tem uma conta? ',
            style: const TextStyle(color: AppColors.textColor),
          ),
          TextSpan(
            text: 'Crie uma.',
            style: const TextStyle(color: AppColors.accentColor, fontWeight: FontWeight.w500),
            recognizer: _tapGestureRecognizer,
          ),
        ],
      ),
    );
  }
}
