import 'dart:math';

import 'package:all_parking/res/theme.dart';
import 'package:flutter/material.dart';

class GaugePainter extends CustomPainter {
  final int ocuppied;
  final int totalAmount;

  const GaugePainter({@required this.ocuppied, @required this.totalAmount});

  @override
  void paint(Canvas canvas, Size size) {
    final painter = Paint()
      ..color = Colors.black12
      ..strokeWidth = 18
      ..style = PaintingStyle.stroke;
    final amountPainter = Paint()
      ..color = AppColors.accentColor
      ..strokeWidth = 18
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.square;

    final center = Offset(size.width / 2, size.height / 2);
    final radius = min(size.width / 2, size.height / 2);
    final angle = 2 * pi * ocuppied / totalAmount;

    final rect = Rect.fromCircle(center: center, radius: radius);

    canvas.drawCircle(center, radius, painter);
    canvas.drawArc(rect, -pi, angle, false, amountPainter);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
