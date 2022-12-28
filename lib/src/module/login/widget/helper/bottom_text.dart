import 'package:flutter/material.dart';
import 'package:ui_screen_flow/src/module/login/animation/change_screen_animation.dart';
import 'package:ui_screen_flow/src/utils/constants.dart';
import 'package:ui_screen_flow/src/utils/helper_function.dart';

import '../../model/screen_enum.dart';

class BottomText extends StatefulWidget {
  const BottomText({super.key, required this.notifyParent});

  final VoidCallback notifyParent;

  @override
  State<BottomText> createState() => _BottomTextState();
}

class _BottomTextState extends State<BottomText> {
  @override
  void initState() {
    ChangeScreenAnimation.bottomTextAnimation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {});
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return HelperFunction.wrapWithAnimationBuilder(
      animation: ChangeScreenAnimation.bottomTextAnimation,
      child: GestureDetector(
        onTap: () {
          widget.notifyParent();
          if (!ChangeScreenAnimation.isPlaying) {
            ChangeScreenAnimation.currentScreen == Screens.createAccount
                ? ChangeScreenAnimation.forward()
                : ChangeScreenAnimation.reverse();
            ChangeScreenAnimation.currentScreen =
                Screens.values[1 - ChangeScreenAnimation.currentScreen.index];
          }
        },
        behavior: HitTestBehavior.opaque,
        child: RichText(
          text: TextSpan(
            style: const TextStyle(fontSize: 16, fontFamily: "Montserrat"),
            children: [
              TextSpan(
                text:
                    ChangeScreenAnimation.currentScreen == Screens.createAccount
                        ? "Already have an account?"
                        : 'Don\'t have a account?',
                style: const TextStyle(
                    color: kPrimaryColor, fontWeight: FontWeight.w600),
              ),
              TextSpan(
                text:
                    ChangeScreenAnimation.currentScreen == Screens.createAccount
                        ? 'Sign In'
                        : 'Sign Up',
                style: const TextStyle(
                    color: kSecondaryColor, fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
      ),
    );
  }
}
