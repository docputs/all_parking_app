import 'package:flutter/foundation.dart';
import 'package:kt_dart/kt.dart';

import '../../../auth/domain/entities/user.dart';
import 'employee.dart';

class Manager extends User {
  final String email;
  final KtList<String> parkingLots;
  final KtList<Employee> employees;

  const Manager({
    @required String id,
    @required String displayName,
    @required this.email,
    @required this.parkingLots,
    @required this.employees,
  }) : super(id: id, displayName: displayName);

  bool get hasEmployees => employees.isNotEmpty();

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Manager && o.email == email && o.parkingLots == parkingLots && o.employees == employees;
  }

  @override
  int get hashCode => email.hashCode ^ parkingLots.hashCode ^ employees.hashCode;

  Manager copyWith({
    String email,
    KtList<String> parkingLots,
    KtList<Employee> employees,
  }) {
    return Manager(
      id: id ?? this.id,
      displayName: displayName ?? this.displayName,
      email: email ?? this.email,
      parkingLots: parkingLots ?? this.parkingLots,
      employees: employees ?? this.employees,
    );
  }
}
