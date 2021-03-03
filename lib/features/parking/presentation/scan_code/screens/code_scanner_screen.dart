import 'package:all_parking/features/parking/presentation/scan_code/bloc/code_scanner_bloc.dart';
import 'package:all_parking/features/parking/presentation/scan_code/screens/components/qr_camera.dart';
import 'package:all_parking/res/messages.dart';
import 'package:all_parking/widgets/app_scaffold.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../service_locator.dart';

class CodeScannerScreen extends StatelessWidget {
  const CodeScannerScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CodeScannerBloc>(),
      child: BlocListener<CodeScannerBloc, CodeScannerState>(
        listener: (context, state) => state.when(
          initial: () => null,
          error: (f) => FlushbarHelper.createError(message: f.message).show(context),
          scanned: (code) => Navigator.of(context).pop(code),
        ),
        child: AppScaffold(
          title: Messages.codeScannerScreenTitle,
          scrollable: false,
          padding: const EdgeInsets.all(0),
          body: const QRCamera(),
        ),
      ),
    );
  }
}
