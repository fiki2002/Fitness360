import 'package:fitness360/constants/app_responsiveness.dart';
import 'package:fitness360/constants/app_string.dart';
import 'package:fitness360/constants/app_typography.dart';
import 'package:fitness360/constants/common_widgets.dart';
import 'package:flutter/material.dart';

class SeeTheTransformations extends StatelessWidget {
  const SeeTheTransformations({super.key});

  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context).size;
    final isSmallScreen = ResponsiveWidget.isSmallScreen(context);

    List<Widget> children = [
      Image.asset(
        AppStrings.image1,
        fit: BoxFit.fill,
      ),
      Common.gap(width: 20),
      Image.asset(
        AppStrings.image3,
        fit: BoxFit.fill,
      ),
      Common.gap(width: 20),
      Image.asset(
        AppStrings.image2,
        fit: BoxFit.fill,
      ),
    ];

    return Column(
      children: [
        Text(
          AppStrings.seeTheTransformations,
          textAlign: TextAlign.center,
          style: AppTypography.baseStyle(
            fontSize: isSmallScreen ? 20 : 40,
            fontWeight: FontWeight.w700,
          ),
        ),
        Common.gap(height: 16),
        Text(
          AppStrings.checkOutText,
          textAlign: TextAlign.center,
          style: AppTypography.baseStyle(
            fontSize: isSmallScreen ? 14 : 20,
          ),
        ),
        Common.gap(height: isSmallScreen ? 30 : 50),
        SizedBox(
          height: isSmallScreen ? 200 : data.width * 0.25,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: children,
          ),
        ),
        Common.gap(height: isSmallScreen ? 30 : 50),
      ],
    );
  }
}
