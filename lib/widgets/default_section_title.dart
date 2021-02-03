import 'package:flutter/material.dart';

class DefaultSectionTitle extends StatelessWidget {
  final String title;
  
  const DefaultSectionTitle(this.title, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(bottom: 10),
      child: Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
    );
  }
}
