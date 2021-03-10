import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'default_text_field.dart';

abstract class ValidatorState {
  bool get showErrorMessages;
}

class DefaultTextFormField<A extends Cubit<ValidatorState>, B> extends StatelessWidget {
  final String labelText;
  final TextInputType keyboardType;
  final bool obscureText;
  final void Function(String) onChanged;
  final bool Function(ValidatorState, ValidatorState) buildWhen;

  const DefaultTextFormField({
    Key key,
    this.buildWhen,
    this.labelText,
    this.keyboardType,
    this.obscureText,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<A, ValidatorState>(
      buildWhen: buildWhen,
      builder: (context, state) {
        return DefaultTextField(
          labelText: labelText,
          onChanged: onChanged,
          keyboardType: keyboardType,
          autovalidateMode: state.showErrorMessages ? AutovalidateMode.always : AutovalidateMode.disabled,
        );
      },
    );
  }
}
