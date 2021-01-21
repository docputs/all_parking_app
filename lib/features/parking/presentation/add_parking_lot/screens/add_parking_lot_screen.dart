import 'package:all_parking/features/auth/presentation/sign_up/bloc/sign_up_bloc.dart';
import 'package:all_parking/features/auth/presentation/sign_up/screens/components/sign_up_text_form_field.dart';
import 'package:all_parking/features/parking/presentation/add_parking_lot/bloc/add_parking_lot_bloc.dart';
import 'package:all_parking/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddParkingLotScreen extends StatelessWidget {
  const AddParkingLotScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Adicionar um estacionamento',
      scrollable: true,
      body: Column(
        children: [
          _buildTitleField(),
        ],
      ),
    );
  }

  Widget _buildTitleField() {
    return BlocBuilder<AddParkingLotBloc, AddParkingLotState>(
      builder: (context, state) {
        return SignUpTextFormField(
          labelText: 'Nome do estacionamento',
          state: state as ValidationFormState,
        );
      },
    );
  }
}
