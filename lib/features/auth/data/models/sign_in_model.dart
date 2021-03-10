import 'package:flutter/foundation.dart';

class SignInModel {
  final String email;
  final String password;

  const SignInModel({@required this.email, @required this.password});

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is SignInModel && o.email == email && o.password == password;
  }

  @override
  int get hashCode => email.hashCode ^ password.hashCode;
}
