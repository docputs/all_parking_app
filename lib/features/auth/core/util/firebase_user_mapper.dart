import 'package:firebase_auth/firebase_auth.dart' as firebase;

import '../../domain/entities/user.dart';

extension FirebaseUserMapperX on firebase.User {
  User toDomain() => User(id: this.uid, displayName: displayName);
}
