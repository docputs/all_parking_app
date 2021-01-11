import 'package:firebase_auth/firebase_auth.dart' as firebase;

import '../../domain/entities/user.dart';

extension FirebaseUserMapperX on firebase.User {
  User toDomain() {
    return User(id: this.uid, displayName: this.displayName, email: this.email);
  }
}
