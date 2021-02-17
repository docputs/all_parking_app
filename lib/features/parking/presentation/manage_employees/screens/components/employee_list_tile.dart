import 'package:all_parking/features/parking/domain/entities/employee.dart';
import 'package:all_parking/widgets/default_list_tile.dart';
import 'package:flutter/material.dart';

class EmployeeListTile extends StatelessWidget {
  final Employee employee;

  const EmployeeListTile(this.employee, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultListTile(title: employee.displayName);
  }
}
