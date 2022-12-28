import 'package:flutter/material.dart';
import 'package:ui_screen_flow/src/module/login/animation/change_screen_animation.dart';
import 'package:ui_screen_flow/src/module/login/model/screen_enum.dart';
import 'package:ui_screen_flow/src/utils/helper_function.dart';

class TopText extends StatefulWidget {
  const TopText({super.key});

  @override
  State<TopText> createState() => _TopTextState();
}

class _TopTextState extends State<TopText> {
  @override
  void initState() {
    ChangeScreenAnimation.topTextAnimation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return HelperFunction.wrapWithAnimationBuilder(
      animation: ChangeScreenAnimation.topTextAnimation,
      child: Text(
        ChangeScreenAnimation.currentScreen == Screens.createAccount
            ? "Create\nAccount"
            : "Welcome\nBack",
        style: const TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
      ),
    );
  }
}
