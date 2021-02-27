import 'package:flutter/foundation.dart';
import 'package:uuid/uuid.dart';

import '../../../../utils/validators.dart';
import '../../../auth/domain/entities/user.dart';
import 'associated_parking_lot.dart';

class Employee extends User {
  final AssociatedParkingLot parkingLot;
  final String phoneNumber;
  final String cpf;

  const Employee({
    @required String id,
    @required String displayName,
    @required this.parkingLot,
    @required this.phoneNumber,
    @required this.cpf,
  }) : super(id: id, displayName: displayName, type: UserType.employee);

  Employee.empty()
      : this(
          id: Uuid().v1(),
          displayName: '',
          parkingLot: AssociatedParkingLot.empty(),
          phoneNumber: '',
          cpf: '',
        );

  bool isValid() {
    return [
      id.isNotEmpty,
      parkingLot.isValid,
      Validators.isValidCpf(cpf),
      Validators.isValidDisplayName(displayName),
      Validators.isValidPhoneNumber(phoneNumber),
    ].every((element) => element);
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Employee &&
        o.parkingLot == parkingLot &&
        o.phoneNumber == phoneNumber &&
        o.cpf == cpf &&
        o.id == id &&
        o.displayName == displayName;
  }

  @override
  int get hashCode => parkingLot.hashCode ^ phoneNumber.hashCode ^ cpf.hashCode;

  Employee copyWith({
    String id,
    String displayName,
    AssociatedParkingLot parkingLot,
    String phoneNumber,
    String cpf,
  }) {
    return Employee(
      id: id ?? this.id,
      displayName: displayName ?? this.displayName,
      parkingLot: parkingLot ?? this.parkingLot,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      cpf: cpf ?? this.cpf,
    );
  }
}
