import 'package:flutter/material.dart';

class CenterWidgetClipper extends CustomClipper<Path> {
  const CenterWidgetClipper({required this.path});
  
  final Path path;
  @override
  Path getClip(Size size) {
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
