import 'package:intl/intl.dart';

class FormatUtils {
  static String formatCurrency(double value) => NumberFormat.currency(symbol: 'R\$').format(value);
  static String formatDateTime(DateTime dateTime, DateFormat dateFormat) => dateFormat.format(dateTime);
  static String formatHour(DateTime dateTime) => formatDateTime(dateTime, DateFormat.Hm());
}
