import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/employee.dart';

part 'employee_dto.freezed.dart';
part 'employee_dto.g.dart';

@freezed
abstract class EmployeeDTO implements _$EmployeeDTO {
  const EmployeeDTO._();

  factory EmployeeDTO({
    @JsonKey(ignore: true) String id,
    @required String displayName,
  }) = _EmployeeDTO;

  factory EmployeeDTO.fromJson(Map<String, dynamic> json) => _$EmployeeDTOFromJson(json);

  factory EmployeeDTO.fromDomain(Employee model) => EmployeeDTO(
        id: model.id,
        displayName: model.displayName,
      );

  Employee toDomain() => Employee(id: id, displayName: displayName);
}
