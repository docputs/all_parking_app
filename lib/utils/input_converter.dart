import 'package:dartz/dartz.dart';

class InputConverter {
  static Option<double> stringToDouble(String input) => optionOf(double.tryParse(input));

  static Option<int> stringToInteger(String input) => optionOf(int.tryParse(input));
}
