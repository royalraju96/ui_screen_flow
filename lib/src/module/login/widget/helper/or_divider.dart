import 'package:flutter/material.dart';
import 'package:ui_screen_flow/src/utils/constants.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 130, vertical: 8),
      child: Row(
        children: [
          Flexible(
            child: Container(height: 1, color: kPrimaryColor),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "or",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),
          Flexible(
            child: Container(height: 1, color: kPrimaryColor),
          ),
        ],
      ),
    );
  }
}
