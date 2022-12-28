import 'package:flutter/material.dart';
import 'package:ui_screen_flow/src/module/dashboard/screens/widget/all_destination.dart';
import 'package:ui_screen_flow/src/module/dashboard/utils/constant.dart';

import '../utils/dashboard_utils.dart';
import 'widget/top_destinations.dart';

class Home extends StatelessWidget {
  static const _padding = 24.0;
  static const _spacing = 24.0;

  const Home({super.key, required this.userResponse});

  final Map<String, dynamic> userResponse;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDashboardPrimaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 52),
              appBar(context, _padding),
              const SizedBox(height: 24),
              header(_padding, userResponse),
              const SizedBox(height: 24),
              searchBar(_padding),
              const SizedBox(height: 36),
              categories(_padding),
              const SizedBox(height: 16),
              const AllDestinations(
                padding: _padding,
                spacing: _spacing,
              ),
              const SizedBox(height: 36),
              const TopDestinations(
                padding: _padding,
                spacing: _spacing,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
