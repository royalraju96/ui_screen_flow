import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui_screen_flow/src/module/dashboard/utils/constant.dart';
import 'package:ui_screen_flow/src/module/login/screens/login.dart';

Widget appBar(BuildContext context, double padding) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: padding),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Icon(
          FontAwesomeIcons.barsStaggered,
          color: kDashboardSecondaryColor,
          size: 24,
        ),
        IconButton(
          onPressed: () {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => const Login(),
                ),
                (route) => false);
          },
          icon: const Icon(
            FontAwesomeIcons.rightFromBracket,
            color: kDashboardSecondaryColor,
            size: 24,
          ),
        )
      ],
    ),
  );
}

Widget header(double padding, Map<String, dynamic> userResponse) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: padding),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Welcome ${userResponse["Name"]},',
          style: const TextStyle(
            color: kDashboardSecondaryColor,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        const Text(
          'Discover',
          style: TextStyle(
            color: kDashboardSecondaryColor,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          'Explore the best places in the world!',
          style: TextStyle(
            color: kDashboardSecondaryColor.withOpacity(0.6),
            fontSize: 16,
          ),
        ),
      ],
    ),
  );
}

Widget searchBar(double padding) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: padding),
    child: Container(
        height: 46,
        padding: const EdgeInsets.symmetric(horizontal: 24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
          color: kDashboardSecondaryColor.withOpacity(0.2),
        ),
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none),
            hintText: "Search your trip",
            suffixIcon: Icon(
              FontAwesomeIcons.magnifyingGlass,
              color: kDashboardSecondaryColor.withOpacity(0.6),
              size: 20,
            ),
          ),
        )),
  );
}

Widget categories(double padding) {
  final categoryList = ['America', 'Europe', 'Asia', 'Oceania'];

  return Padding(
    padding: EdgeInsets.symmetric(horizontal: padding),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            const Text(
              'All',
              style: TextStyle(
                color: kDashboardSecondaryColor,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 2),
            Container(
              width: 4,
              height: 4,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: kDashboardSecondaryColor,
              ),
            ),
          ],
        ),
        for (final category in categoryList)
          Text(
            category,
            style: TextStyle(
              color: kDashboardSecondaryColor.withOpacity(0.6),
              fontSize: 16,
            ),
          ),
      ],
    ),
  );
}
