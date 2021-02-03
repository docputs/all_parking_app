import 'package:all_parking/features/auth/presentation/sign_up/bloc/sign_up_bloc.dart';
import 'package:all_parking/features/parking/domain/entities/parked_vehicle.dart';
import 'package:all_parking/features/parking/presentation/check-in/bloc/check_in_bloc.dart';
import 'package:all_parking/features/parking/presentation/check-in/screens/components/check_in_form.dart';
import 'package:all_parking/features/parking/presentation/check-in/screens/components/vehicle_color_dropdown_field.dart';
import 'package:all_parking/res/messages.dart';
import 'package:all_parking/utils/validators.dart';
import 'package:all_parking/widgets/app_scaffold.dart';
import 'package:all_parking/widgets/default_button.dart';
import 'package:all_parking/widgets/parking_lot_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../service_locator.dart';

class CheckInScreen extends StatelessWidget {
  const CheckInScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CheckInBloc>(),
      child: AppScaffold(
        title: 'Entrada de veículo',
        body: const CheckInForm(),
      ),
    );
  }
}
