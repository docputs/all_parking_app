import 'default_card.dart';
import 'package:flutter/material.dart';

class DefaultDropdownField<T> extends StatelessWidget {
  final List<DropdownMenuItem<T>> items;
  final void Function(T) onChanged;
  final T value;

  const DefaultDropdownField(
    this.items, {
    Key key,
    @required this.onChanged,
    @required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultCard(
      elevation: 3,
      padding: const EdgeInsets.only(left: 16, right: 10),
      child: DropdownButton<T>(
        itemHeight: 52,
        icon: const Icon(Icons.keyboard_arrow_down),
        underline: const SizedBox(),
        items: items,
        value: value,
        onChanged: onChanged,
        dropdownColor: Colors.white,
      ),
    );
  }
}
