import 'package:flutter/material.dart';
import 'package:ui_screen_flow/src/module/dashboard/screens/home.dart';
import 'package:ui_screen_flow/src/module/login/animation/change_screen_animation.dart';
import 'package:ui_screen_flow/src/module/login/model/screen_enum.dart';

import '../../../../utils/constants.dart';

class LoginButton extends StatelessWidget {
  const LoginButton(
      {super.key, required this.title, required this.userResponse});

  final String title;
  final Map<String, dynamic> userResponse;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 135, vertical: 16),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 14),
              shape: const StadiumBorder(),
              backgroundColor: kSecondaryColor,
              elevation: 8,
              shadowColor: Colors.black87),
          onPressed: () {
            if (ChangeScreenAnimation.currentScreen == Screens.createAccount) {
              if (userResponse.isEmpty || userResponse.length < 3) {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    backgroundColor: Colors.white,
                    content: Text(
                      "Please fill all the detail",
                      style: TextStyle(color: kSecondaryColor),
                    )));
              } else {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (_) => Home(userResponse: userResponse)),
                    (route) => false);
              }
            } else {
              print("Logged in success");
            }
          },
          child: Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          )),
    );
  }
}
