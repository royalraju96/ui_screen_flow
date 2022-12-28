import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../../../utils/constants.dart';

class TopWidget extends StatelessWidget {
  const TopWidget({super.key, required this.height, required this.width});

  final double width, height;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -35 * math.pi / 100,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(150),
            gradient: const LinearGradient(
                begin: Alignment(-0.2, -0.8),
                end: Alignment.bottomCenter,
                colors: [kTopGradientColor1, kTopGradientColor2])),
      ),
    );
  }
}
