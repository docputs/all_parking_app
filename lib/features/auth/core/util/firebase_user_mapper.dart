import 'package:firebase_auth/firebase_auth.dart' as firebase;

import '../../domain/entities/user.dart';

extension FirebaseUserMapperX on firebase.User {
  User toDomain() {
    final firstName = this.displayName.split(' ')[0];
    final lastName = this.displayName.split(' ')[1];
    return User(id: this.uid, firstName: firstName, lastName: lastName);
  }
}
