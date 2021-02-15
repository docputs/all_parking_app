import 'package:flutter/foundation.dart';

enum UserType { manager, employee }

class User {
  final String id;
  final String displayName;
  final UserType type;

  const User({
    @required this.id,
    @required this.displayName,
    this.type,
  });

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is User && o.id == id && o.displayName == displayName && o.type == type;
  }

  @override
  int get hashCode => id.hashCode ^ displayName.hashCode ^ type.hashCode;
}
