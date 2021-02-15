import 'package:all_parking/features/auth/domain/entities/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/employee.dart';

part 'employee_dto.freezed.dart';
part 'employee_dto.g.dart';

@freezed
abstract class EmployeeDTO implements _$EmployeeDTO {
  const EmployeeDTO._();

  const factory EmployeeDTO({
    @JsonKey(ignore: true) String id,
    @required String displayName,
    @required UserType type,
  }) = _EmployeeDTO;

  factory EmployeeDTO.fromJson(Map<String, dynamic> json) => _$EmployeeDTOFromJson(json);

  factory EmployeeDTO.fromDomain(Employee model) => EmployeeDTO(
        id: model.id,
        displayName: model.displayName,
        type: model.type,
      );

  factory EmployeeDTO.fromFirestore(DocumentSnapshot doc) => EmployeeDTO.fromJson(doc.data()).copyWith(id: doc.id);

  Employee toDomain() => Employee(id: id, displayName: displayName);
}
