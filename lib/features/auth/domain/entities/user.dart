import 'package:flutter/foundation.dart';

class User {
  final String id;
  final String displayName;

  const User({
    @required this.id,
    @required this.displayName,
  });

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is User && o.id == id && o.displayName == displayName;
  }

  @override
  int get hashCode => id.hashCode ^ displayName.hashCode;
}
