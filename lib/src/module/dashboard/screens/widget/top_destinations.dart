import 'package:flutter/material.dart';
import 'package:ui_screen_flow/src/module/dashboard/utils/constant.dart';

import '../../../../utils/constants.dart';
import '../../object/mock_top_destination.dart';
import 'top_destination_item.dart';

class TopDestinations extends StatelessWidget {
  final double padding;
  final double spacing;

  const TopDestinations({
    Key? key,
    required this.padding,
    required this.spacing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: padding),
          child: const Text(
            'Top Destinations',
            style: TextStyle(
              color: kDashboardSecondaryColor,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 16),
        SizedBox(
          height: 94,
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: padding),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (_, __) => SizedBox(width: spacing),
            itemCount: MockTopDestinations.data.length,
            itemBuilder: (_, index) => TopDestinationItem(
              details: MockTopDestinations.data[index],
            ),
          ),
        ),
      ],
    );
  }
}
