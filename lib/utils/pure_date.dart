class PureDate {
  final int day;
  final int month;
  final int year;

  const PureDate(this.day, this.month, this.year);

  PureDate.fromDateTime(DateTime dateTime) : this(dateTime.day, dateTime.month, dateTime.year);

  bool get isToday => this == PureDate.fromDateTime(DateTime.now());

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is PureDate && o.day == day && o.month == month && o.year == year;
  }

  @override
  int get hashCode => day.hashCode ^ month.hashCode ^ year.hashCode;
}
