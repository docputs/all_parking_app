import 'package:firebase_auth/firebase_auth.dart' as firebase;

import '../../domain/entities/user.dart';

extension FirebaseUserMapperX on firebase.User {
  User toDomain() {
    String firstName;
    String lastName;

    if (this.displayName?.length == 2) {
      firstName = this.displayName.split(' ')[0];
      lastName = this.displayName.split(' ')[1];
    } else {
      firstName = lastName = '';
    }
    return User(id: this.uid, firstName: firstName, lastName: lastName);
  }
}
