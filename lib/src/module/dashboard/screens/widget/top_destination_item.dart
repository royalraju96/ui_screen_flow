import 'package:flutter/material.dart';
import 'package:ui_screen_flow/src/module/dashboard/utils/constant.dart';

import '../../model/destination.dart';

class TopDestinationItem extends StatelessWidget {
  final Destination details;

  const TopDestinationItem({
    Key? key,
    required this.details,
  }) : super(key: key);

  Widget image() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24),
      child: Image.asset(
        details.image,
        width: 90,
        height: 90,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget text() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          details.city,
          style: const TextStyle(
            color: kDashboardSecondaryColor,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          details.country,
          style: TextStyle(
            color: kDashboardSecondaryColor.withOpacity(0.6),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 2),
      padding: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: kDashboardPrimaryColor,
        boxShadow: [
          const BoxShadow(
            offset: Offset(-2, -2),
            color: Colors.white70,
          ),
          BoxShadow(
            offset: const Offset(2, 2),
            color: kDashboardSecondaryColor.withOpacity(0.2),
          ),
        ],
      ),
      child: Row(
        children: [
          image(),
          const SizedBox(width: 16),
          text(),
        ],
      ),
    );
  }
}
