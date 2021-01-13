import 'package:flutter/foundation.dart';

import '../../../auth/domain/entities/user.dart';

class Employee extends User {
  const Employee({
    @required String id,
    @required String firstName,
    @required String lastName,
  }) : super(id: id, firstName: firstName, lastName: lastName);
}
