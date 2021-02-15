import 'package:all_parking/features/auth/domain/entities/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
abstract class UserDTO implements _$UserDTO {
  const UserDTO._();

  const factory UserDTO({
    @JsonKey(ignore: true) String id,
    @required String displayName,
    @required UserType type,
  }) = _UserDTO;

  factory UserDTO.fromJson(Map<String, dynamic> json) => _$UserDTOFromJson(json);

  factory UserDTO.fromFirestore(DocumentSnapshot doc) => UserDTO.fromJson(doc.data()).copyWith(id: doc.id);
}
