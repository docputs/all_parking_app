import 'package:all_parking/widgets/default_text_field.dart';
import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';

class TokenFormField extends StatefulWidget {
  final String labelText;
  final void Function(String value) onChanged;

  const TokenFormField({Key key, this.labelText, this.onChanged}) : super(key: key);

  @override
  _TokenFormFieldState createState() => _TokenFormFieldState();
}

class _TokenFormFieldState extends State<TokenFormField> {
  TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  void _pasteClipboard() {
    FlutterClipboard.paste().then((value) => _controller.text = value);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTextField(
      labelText: widget.labelText,
      onChanged: widget.onChanged,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
