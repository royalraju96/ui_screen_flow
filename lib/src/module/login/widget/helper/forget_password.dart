import 'package:flutter/material.dart';
import 'package:ui_screen_flow/src/utils/constants.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 110),
      child: TextButton(
        child: const Text(
          "Forgot Password?",
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: kSecondaryColor),
        ),
        onPressed: () {},
      ),
    );
  }
}
