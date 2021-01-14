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
}
