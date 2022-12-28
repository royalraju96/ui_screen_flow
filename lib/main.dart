import 'package:flutter/material.dart';
import 'package:ui_screen_flow/src/module/login/screens/login.dart';
import 'package:ui_screen_flow/src/utils/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practice App',
      theme: ThemeData(
          scaffoldBackgroundColor: kBackGroundColor,
          textTheme:
              Theme.of(context).textTheme.apply(bodyColor: kPrimaryColor),
          fontFamily: "Montserrat"),
      home: const Login(),
    );
  }
}
