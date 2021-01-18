import 'package:flutter/foundation.dart';

import '../../../auth/domain/entities/user.dart';

class Employee extends User {
  const Employee({
    @required String id,
    @required String displayName,
  }) : super(id: id, displayName: displayName);
}
