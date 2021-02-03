import 'package:all_parking/features/parking/presentation/check-in/bloc/check_in_bloc.dart';
import 'package:all_parking/features/parking/presentation/check-in/screens/components/check_in_form.dart';
import 'package:all_parking/widgets/app_scaffold.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../service_locator.dart';

class CheckInScreen extends StatelessWidget {
  const CheckInScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CheckInBloc>(),
      child: BlocListener<CheckInBloc, CheckInState>(
        listenWhen: (p, c) => p.saveFailureOrSuccessOption != c.saveFailureOrSuccessOption,
        listener: (context, state) {
          state.saveFailureOrSuccessOption.fold(
            () => null,
            (failureOrSuccess) => failureOrSuccess.fold(
              (f) => FlushbarHelper.createError(message: f.message).show(context),
              (_) => Navigator.of(context).pop(),
            ),
          );
        },
        child: AppScaffold(
          title: 'Entrada de veículo',
          body: const CheckInForm(),
        ),
      ),
    );
  }
}
