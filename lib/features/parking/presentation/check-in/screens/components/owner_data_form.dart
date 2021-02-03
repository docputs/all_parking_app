import 'package:all_parking/features/auth/presentation/sign_up/bloc/sign_up_bloc.dart';
import 'package:all_parking/features/parking/presentation/check-in/bloc/check_in_bloc.dart';
import 'package:all_parking/res/constants.dart';
import 'package:all_parking/utils/validators.dart';
import 'package:all_parking/widgets/parking_lot_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OwnerDataForm extends StatelessWidget {
  const OwnerDataForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildOwnerNameField(),
        _buildPhoneAndCpfFields(),
      ],
    );
  }

  Widget _buildPhoneAndCpfFields() {
    return Row(
      children: [
        Expanded(child: _buildOwnerPhoneField()),
        const SizedBox(width: 20),
        Expanded(child: _buildOwnerCpfField()),
      ],
    );
  }

  Widget _buildOwnerNameField() {
    return BlocBuilder<CheckInBloc, CheckInState>(
      builder: (context, state) => ParkingLotTextFormField(
        labelText: 'Nome',
        state: state as ValidationFormState,
        onChanged: (value) => context.read<CheckInBloc>().add(CheckInEvent.changedOwnerName(value)),
      ),
    );
  }

  Widget _buildOwnerPhoneField() {
    return BlocBuilder<CheckInBloc, CheckInState>(
      builder: (context, state) => ParkingLotTextFormField(
        labelText: 'Celular',
        state: state as ValidationFormState,
        onChanged: (value) => context.read<CheckInBloc>().add(CheckInEvent.changedOwnerPhone(value)),
        mask: Constants.phoneNumberMask,
        keyboardType: TextInputType.number,
      ),
    );
  }

  Widget _buildOwnerCpfField() {
    return BlocBuilder<CheckInBloc, CheckInState>(
      builder: (context, state) => ParkingLotTextFormField(
        labelText: 'CPF',
        state: state as ValidationFormState,
        validationEither: Validators.validateCpf,
        onChanged: (value) => context.read<CheckInBloc>().add(CheckInEvent.changedOwnerCpf(value)),
        mask: Constants.cpfMask,
        keyboardType: TextInputType.number,
      ),
    );
  }
}
