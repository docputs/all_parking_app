import 'package:flutter/foundation.dart';
import 'package:uuid/uuid.dart';

import '../../../auth/domain/entities/user.dart';

class Employee extends User {
  final String parkingLotId;

  const Employee({
    @required String id,
    @required String displayName,
    @required this.parkingLotId,
  }) : super(id: id, displayName: displayName, type: UserType.employee);

  Employee.empty() : this(id: Uuid().v1(), displayName: '', parkingLotId: '');

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Employee && o.displayName == displayName && o.id == id && o.type == type && o.parkingLotId == parkingLotId;
  }

  @override
  int get hashCode => id.hashCode ^ displayName.hashCode ^ type.hashCode ^ parkingLotId.hashCode;

  Employee copyWith({String id, String displayName, String parkingLotId}) {
    return Employee(
      id: id ?? this.id,
      displayName: displayName ?? this.displayName,
      parkingLotId: parkingLotId ?? this.parkingLotId,
    );
  }
}
