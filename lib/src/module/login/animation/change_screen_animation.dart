import 'package:flutter/material.dart';
import 'package:ui_screen_flow/src/module/login/model/screen_enum.dart';

class ChangeScreenAnimation {
  static late AnimationController topTextController;
  static late Animation<Offset> topTextAnimation;

  static late AnimationController bottomTextController;
  static late Animation<Offset> bottomTextAnimation;

  static bool isPlaying = false;

  static Screens currentScreen = Screens.createAccount;

  static void initialize(
      {required TickerProvider vsync,
      required int createAccountItems,
      required int loginItems}) {
    topTextController = AnimationController(
      vsync: vsync,
      duration: const Duration(milliseconds: 200),
    );

    ///Bottom Text Animation
    ///
    topTextAnimation = _createAnimation(
        begin: Offset.zero,
        end: const Offset(-1.2, 0),
        parent: topTextController);

    bottomTextController = AnimationController(
      vsync: vsync,
      duration: const Duration(milliseconds: 200),
    );

    bottomTextAnimation = _createAnimation(
        begin: Offset.zero,
        end: const Offset(0, 1.7),
        parent: bottomTextController);
  }

  static Animation<Offset> _createAnimation(
      {required Offset begin,
      required Offset end,
      required AnimationController parent}) {
    return Tween(begin: begin, end: end)
        .animate(CurvedAnimation(parent: parent, curve: Curves.easeInOut));
  }

  static void dispose() {
    for (var controller in [topTextController, bottomTextController]) {
      controller.dispose();
    }
  }

  static Future<void> forward() async {
    isPlaying = true;
    topTextController.forward();
    await bottomTextController.forward();

    bottomTextController.reverse();
    await topTextController.reverse();

    isPlaying = false;
  }

  ///Reverse
  static Future<void> reverse() async {
    isPlaying = true;
    topTextController.forward();
    await bottomTextController.forward();

    bottomTextController.reverse();
    await topTextController.reverse();

    isPlaying = false;
  }
}
