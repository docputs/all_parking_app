import 'package:all_parking/features/auth/domain/entities/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/employee.dart';
import 'associated_parking_lot_dto.dart';

part 'employee_dto.freezed.dart';
part 'employee_dto.g.dart';

@freezed
abstract class EmployeeDTO implements _$EmployeeDTO {
  const EmployeeDTO._();

  @JsonSerializable(explicitToJson: true)
  const factory EmployeeDTO({
    @JsonKey(ignore: false) String id,
    @required String displayName,
    @required AssociatedParkingLotDTO parkingLot,
    @required String phoneNumber,
    @required String cpf,
    @required UserType type,
  }) = _EmployeeDTO;

  factory EmployeeDTO.fromJson(Map<String, dynamic> json) => _$EmployeeDTOFromJson(json);

  factory EmployeeDTO.fromDomain(Employee model) => EmployeeDTO(
        id: model.id,
        displayName: model.displayName,
        type: model.type,
        parkingLot: AssociatedParkingLotDTO.fromDomain(model.parkingLot),
        phoneNumber: model.phoneNumber,
        cpf: model.cpf,
      );

  factory EmployeeDTO.fromFirestore(DocumentSnapshot doc) => EmployeeDTO.fromJson(doc.data()).copyWith(id: doc.id);

  Employee toDomain() => Employee(
        id: id,
        displayName: displayName,
        parkingLot: parkingLot.toDomain(),
        cpf: cpf,
        phoneNumber: phoneNumber,
      );
}
