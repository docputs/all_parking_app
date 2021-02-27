import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../parking/data/dtos/manager_dto.dart';
import '../../data/dtos/user_dto.dart';
import '../../domain/entities/user.dart';

class FirestoreUserConverter {
  static User convert(DocumentSnapshot doc) {
    final userDTO = UserDTO.fromFirestore(doc);
    if (userDTO.type == UserType.manager)
      return ManagerDTO.fromFirestore(doc).toDomain();
  }
}
