import 'package:all_parking/features/auth/data/dtos/user_dto.dart';
import 'package:all_parking/features/auth/domain/entities/user.dart';
import 'package:all_parking/features/parking/data/dtos/manager_dto.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreUserConverter {
  static User convert(DocumentSnapshot doc) {
    final userDTO = UserDTO.fromFirestore(doc);
    if (userDTO.type == UserType.manager)
      return ManagerDTO.fromFirestore(doc).toDomain();
  }
}
