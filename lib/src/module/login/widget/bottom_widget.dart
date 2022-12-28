import 'package:flutter/material.dart';

import '../../../utils/constants.dart';

class BottomWidget extends StatelessWidget {
  const BottomWidget({super.key, required this.screenSize});

  final double screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.5 * screenSize,
      height: 1.5 * screenSize,
      decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(colors: [
            kBottomGradientColor1,
            kBottomGradientColor2,
          ], begin: Alignment(0.6, -1.1), end: Alignment(0.7, 0.8))),
    );
  }
}
