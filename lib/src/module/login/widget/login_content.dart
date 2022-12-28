import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:ui_screen_flow/src/module/login/animation/change_screen_animation.dart';
import 'package:ui_screen_flow/src/module/login/model/screen_enum.dart';
import 'package:ui_screen_flow/src/module/login/widget/helper/forget_password.dart';
import 'package:ui_screen_flow/src/module/login/widget/helper/logos.dart';
import 'package:ui_screen_flow/src/module/login/widget/helper/or_divider.dart';
import 'package:ui_screen_flow/src/module/login/widget/helper/top_text.dart';

import 'helper/bottom_text.dart';
import 'helper/input_field.dart';
import 'helper/login_button.dart';

class LoginContent extends StatefulWidget {
  const LoginContent({super.key});

  @override
  State<LoginContent> createState() => _LoginContentState();
}

class _LoginContentState extends State<LoginContent>
    with TickerProviderStateMixin {
  late final List<Widget> createAccountContent;
  late final List<Widget> loginContent;
  String value = "";
  Map<String, dynamic> enteredData = {};
  @override
  void initState() {
    createAccountContent = [
      InputField(
        hint: "Name",
        icon: Ionicons.person_outline,
        enteredValue: enteredData,
      ),
      InputField(
        hint: "Email",
        icon: Ionicons.mail_outline,
        enteredValue: enteredData,
      ),
      InputField(
        hint: "Password",
        icon: Ionicons.lock_closed_outline,
        enteredValue: enteredData,
      ),
      LoginButton(
        title: "Sign Up",
        userResponse: enteredData,
      ),
      const OrDivider(),
      const Logos()
    ];

    loginContent = [
      InputField(
        hint: "Email",
        icon: Ionicons.mail_outline,
        enteredValue: enteredData,
      ),
      InputField(
        hint: "Password",
        icon: Ionicons.lock_closed_outline,
        enteredValue: enteredData,
      ),
      LoginButton(
        title: "Sign In",
        userResponse: enteredData,
      ),
      const ForgetPassword()
    ];

    ChangeScreenAnimation.initialize(
        vsync: this,
        createAccountItems: createAccountContent.length,
        loginItems: loginContent.length);

    ///Create Account Animations
    // for (var i = 0; i < createAccountContent.length; i++) {
    //   createAccountContent[i] = HelperFunction.wrapWithAnimationBuilder(
    //       animation: ChangeScreenAnimation.createAccountAnimations[i],
    //       child: createAccountContent[i]);
    // }

    // ///Login Animations
    // for (var i = 0; i < loginContent.length; i++) {
    //   loginContent[i] = HelperFunction.wrapWithAnimationBuilder(
    //       animation: ChangeScreenAnimation.loginAnimations[i],
    //       child: loginContent[i]);
    // }
    super.initState();
  }

  @override
  void dispose() {
    ChangeScreenAnimation.dispose();
    super.dispose();
  }

  void refresh() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    print("Map ::: $enteredData");
    return Stack(
      children: [
        const Positioned(top: 136, left: 35, child: TopText()),
        Padding(
          padding: const EdgeInsets.only(top: 100.0),
          child: Stack(
            children: [
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: ChangeScreenAnimation.currentScreen ==
                          Screens.createAccount
                      ? createAccountContent
                      : loginContent),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: BottomText(
              notifyParent: refresh,
            ),
          ),
        )
      ],
    );
  }
}
