import 'package:flutter/foundation.dart';

class User {
  final String id;
  final String displayName;
  final String email;
  final bool isAdmin;

  const User({
    @required this.id,
    @required this.displayName,
    @required this.email,
    this.isAdmin = false,
  });

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is User && o.id == id && o.displayName == displayName && o.email == email && o.isAdmin == isAdmin;
  }

  @override
  int get hashCode {
    return id.hashCode ^ displayName.hashCode ^ email.hashCode ^ isAdmin.hashCode;
  }
}
