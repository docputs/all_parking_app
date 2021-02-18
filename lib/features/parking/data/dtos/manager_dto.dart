import 'package:all_parking/features/auth/domain/entities/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase;

import '../../domain/entities/manager.dart';
import 'employee_dto.dart';

part 'manager_dto.freezed.dart';
part 'manager_dto.g.dart';

@freezed
abstract class ManagerDTO implements _$ManagerDTO {
  const ManagerDTO._();

  @JsonSerializable(explicitToJson: true)
  const factory ManagerDTO({
    @JsonKey(ignore: true) String id,
    @required String displayName,
    @required String email,
    @required List<String> parkingLots,
    @required List<EmployeeDTO> employees,
    @required UserType type,
  }) = _ManagerDTO;

  factory ManagerDTO.fromJson(Map<String, dynamic> json) => _$ManagerDTOFromJson(json);

  Manager toDomain() => Manager(
        id: id,
        displayName: displayName,
        email: email,
        employees: KtList.from(employees.map((employee) => employee.toDomain()).toList()),
        parkingLots: KtList.from(parkingLots),
      );

  factory ManagerDTO.fromDomain(Manager model) => ManagerDTO(
        id: model.id,
        email: model.email,
        employees: model.employees.asList().map((employee) => EmployeeDTO.fromDomain(employee)).toList(),
        displayName: model.displayName,
        parkingLots: model.parkingLots.asList(),
        type: model.type,
      );

  factory ManagerDTO.fromFirebaseUser(firebase.User user) => ManagerDTO(
        id: user.uid,
        email: user.email,
        displayName: user.displayName,
        parkingLots: [],
        employees: [],
        type: UserType.manager,
      );

  factory ManagerDTO.fromFirestore(DocumentSnapshot doc) => ManagerDTO.fromJson(doc.data()).copyWith(id: doc.id);
}
