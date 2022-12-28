import 'package:flutter/material.dart';
import 'package:ui_screen_flow/src/module/login/widget/center_widget.dart';

import '../widget/bottom_widget.dart';
import '../widget/login_content.dart';
import '../widget/top_widget.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: -160,
            bottom: -30,
            child: TopWidget(
                height: 1.2 * screenSize.width, width: 1.2 * screenSize.width),
          ),
          Positioned(
            bottom: -180,
            left: -40,
            child: BottomWidget(
              screenSize: screenSize.width,
            ),
          ),
          CenterWidget(size: screenSize),
          const LoginContent()
        ],
      ),
    );
  }
}
