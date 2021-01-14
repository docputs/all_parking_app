import 'package:flutter/foundation.dart';

class User {
  final String id;
  final String firstName;
  final String lastName;

  const User({
    @required this.id,
    @required this.firstName,
    @required this.lastName,
  });

  String get fullName => '$firstName $lastName';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is User && o.id == id && o.firstName == firstName && o.lastName == lastName;
  }

  @override
  int get hashCode => id.hashCode ^ firstName.hashCode ^ lastName.hashCode;
}
