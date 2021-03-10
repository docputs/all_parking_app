import 'package:clipboard/clipboard.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../res/messages.dart';
import '../../../../../../widgets/default_alert_dialog.dart';
import '../../../../../../widgets/default_list_tile.dart';
import '../../../../domain/entities/employee.dart';
import '../../bloc/manage_employees_bloc.dart';

class EmployeeListTile extends StatelessWidget {
  final Employee employee;

  const EmployeeListTile(this.employee, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultListTile(
      title: employee.displayName,
      subtitle: employee.parkingLot.title,
      actions: _buildActions(context),
    );
  }

  List<IconButton> _buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.copy),
        onPressed: () => _copyIdToClipboard(context),
      ),
      IconButton(
        icon: Icon(Icons.delete),
        onPressed: () => _showConfirmDialog(context).then((value) {
          if (value != null && value) context.read<ManageEmployeesBloc>().add(ManageEmployeesEvent.deleted(employee));
        }),
      ),
    ];
  }

  Future<void> _copyIdToClipboard(BuildContext context) {
    return FlutterClipboard.copy(employee.id)
        .then((value) => FlushbarHelper.createInformation(message: Messages.manageEmployeesTokenCopied).show(context));
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
