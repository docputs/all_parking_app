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
}
