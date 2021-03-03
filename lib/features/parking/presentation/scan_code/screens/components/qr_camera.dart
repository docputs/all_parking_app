import 'package:all_parking/features/parking/presentation/scan_code/bloc/code_scanner_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QRCamera extends StatefulWidget {
  const QRCamera({Key key}) : super(key: key);

  @override
  _QRCameraState createState() => _QRCameraState();
}

class _QRCameraState extends State<QRCamera> {
  GlobalKey _key;

  @override
  void initState() {
    super.initState();
    _key = GlobalKey(debugLabel: 'QR');
  }

  @override
  Widget build(BuildContext context) {
    return QRView(
      key: _key,
      onQRViewCreated: (controller) => context.read<CodeScannerBloc>().add(CodeScannerEvent.started(controller: controller)),
    );
  }
}
