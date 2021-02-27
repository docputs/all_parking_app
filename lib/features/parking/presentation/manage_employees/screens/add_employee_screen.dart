import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../res/messages.dart';
import '../../../../../service_locator.dart';
import '../../../../../widgets/app_scaffold.dart';
import '../bloc/add_employee/add_employee_bloc.dart';
import 'components/employee_form.dart';

class AddEmployeeScreen extends StatelessWidget {
  const AddEmployeeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AddEmployeeBloc>(),
      child: BlocListener<AddEmployeeBloc, AddEmployeeState>(
        listenWhen: (p, c) => p.saveFailureOrSuccessOption != c.saveFailureOrSuccessOption,
        listener: (context, state) => state.saveFailureOrSuccessOption.fold(
          () => null,
          (either) => either.fold(
            (f) => FlushbarHelper.createError(message: f.message).show(context),
            (_) => Navigator.of(context).pop(true),
          ),
        ),
        child: AppScaffold(
          title: Messages.addEmployeeScreenTitle,
          body: const EmployeeForm(),
        ),
      ),
    );
  }
}
