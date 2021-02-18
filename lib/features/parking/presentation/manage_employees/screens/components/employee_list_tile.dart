import 'package:all_parking/features/parking/domain/entities/employee.dart';
import 'package:all_parking/features/parking/presentation/manage_employees/bloc/manage_employees_bloc.dart';
import 'package:all_parking/res/messages.dart';
import 'package:all_parking/widgets/default_alert_dialog.dart';
import 'package:all_parking/widgets/default_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmployeeListTile extends StatelessWidget {
  final Employee employee;

  const EmployeeListTile(this.employee, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultListTile(
      title: employee.displayName,
      subtitle: employee.parkingLot.title,
      trailing: IconButton(
        icon: Icon(Icons.delete),
        onPressed: () => _showConfirmDialog(context).then((value) {
          if (value != null && value) context.read<ManageEmployeesBloc>().add(ManageEmployeesEvent.deleted(employee));
        }),
      ),
    );
  }

  Future<bool> _showConfirmDialog(BuildContext context) {
    return showDialog<bool>(
      context: context,
      builder: (context) => DefaultAlertDialog(
        title: Messages.manageEmployeesConfirmDialogTitle,
        message: Messages.manageEmployeesConfirmDialogMessage(employee),
        rightButtonText: Messages.manageEmployeesConfirmDialogRightButton,
        leftButtonText: Messages.manageEmployeesConfirmDialogLeftButton,
        useWarningButton: true,
      ),
    );
  }
}
