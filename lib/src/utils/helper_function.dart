import 'package:flutter/material.dart';

class HelperFunction {
  static Widget wrapWithAnimationBuilder(
      {required Animation<Offset> animation, required Widget child}) {
    return AnimatedBuilder(
      animation: animation,
      builder: (_, __) {
        return FractionalTranslation(
          translation: animation.value,
          child: child,
        );
      },
    );
  }
}
