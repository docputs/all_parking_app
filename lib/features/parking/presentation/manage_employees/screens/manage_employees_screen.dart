import 'package:all_parking/features/parking/domain/entities/manager.dart';
import 'package:all_parking/features/parking/presentation/manage_employees/bloc/manage_employees_bloc.dart';
import 'package:all_parking/features/parking/presentation/manage_employees/screens/components/employee_list_tile.dart';
import 'package:all_parking/res/constants.dart';
import 'package:all_parking/res/messages.dart';
import 'package:all_parking/widgets/app_scaffold.dart';
import 'package:all_parking/widgets/default_drawer.dart';
import 'package:all_parking/widgets/default_section_title.dart';
import 'package:all_parking/widgets/no_data_to_show.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../service_locator.dart';

class ManageEmployeesScreen extends StatelessWidget {
  const ManageEmployeesScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ManageEmployeesBloc>()..add(const ManageEmployeesEvent.fetchRequested()),
      child: AppScaffold(
        scrollable: false,
        customAppBar: _buildCustomAppBar(context),
        drawer: const DefaultDrawer(),
        body: _buildBody(),
      ),
    );
  }

  AppBar _buildCustomAppBar(BuildContext context) {
    return AppBar(
      title: Text(Messages.manageEmployeesScreenTitle),
      actions: [
        Builder(
          builder: (innerContext) => IconButton(
            icon: Icon(Icons.add),
            onPressed: () => Navigator.of(innerContext).pushNamed<bool>(Constants.addEmployeeRoute).then((value) {
              if (value != null) innerContext.read<ManageEmployeesBloc>().add(const ManageEmployeesEvent.fetchRequested());
            }),
          ),
        ),
      ],
    );
  }

  Widget _buildBody() {
    return BlocBuilder<ManageEmployeesBloc, ManageEmployeesState>(
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox(),
          loading: () => const Center(child: CircularProgressIndicator()),
          success: (manager) => manager.employees.isEmpty() ? NoDataToShow() : _buildEmployeeList(manager),
          error: (f) => Center(child: Text(f.message)),
        );
      },
    );
  }

  Widget _buildEmployeeList(Manager manager) {
    return Column(
      children: [
        const DefaultSectionTitle(Messages.manageEmployeesHeader),
        Expanded(
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) => EmployeeListTile(manager.employees[index]),
            itemCount: manager.employees.size,
          ),
        ),
      ],
    );
  }
}
