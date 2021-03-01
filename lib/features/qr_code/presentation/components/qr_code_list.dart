import 'package:flutter/material.dart';

import 'package:all_parking/features/qr_code/domain/entities/qr_code.dart';
import 'package:kt_dart/kt.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRCodeList extends StatelessWidget {
  final KtList<QRCode> codes;

  const QRCodeList(this.codes, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        final code = codes[index];
        return QrImage(data: code.value);
      },
      itemCount: codes.size,
    );
  }
}
