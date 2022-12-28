import 'dart:ui';

import 'package:flutter/material.dart';

class CenterPainterWidget extends CustomPainter {
  const CenterPainterWidget({required this.path});

  final Path path;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10
      ..imageFilter = ImageFilter.blur(sigmaX: 10, sigmaY: 10)
      ..color = Colors.black26;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CenterPainterWidget oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(CenterPainterWidget oldDelegate) => false;
}
