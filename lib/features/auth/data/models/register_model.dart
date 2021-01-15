import 'package:flutter/foundation.dart';

class RegisterModel {
  final String firstName;
  final String lastName;
  final String email;
  final String password;

  const RegisterModel({
    @required this.firstName,
    @required this.lastName,
    @required this.email,
    @required this.password,
  });

  String get fullName => '$firstName $lastName'.toUpperCase();

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is RegisterModel && o.firstName == firstName && o.lastName == lastName && o.email == email && o.password == password;
  }

  @override
  int get hashCode {
    return firstName.hashCode ^ lastName.hashCode ^ email.hashCode ^ password.hashCode;
  }
}
