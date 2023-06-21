import 'package:fitness360/constants/app_string.dart';
import 'package:fitness360/constants/app_typography.dart';
import 'package:fitness360/constants/common_widgets.dart';
import 'package:flutter/material.dart';

class SeeTheTransformations extends StatelessWidget {
  const SeeTheTransformations({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          AppStrings.seeTheTransformations,
          style: AppTypography.baseStyle(
            fontSize: 40,
            fontWeight: FontWeight.w700,
          ),
        ),
        Common.gap(height: 16),
        Text(
          AppStrings.checkOutText,
          textAlign: TextAlign.center,
          style: AppTypography.baseStyle(),
        ),
        Common.gap(height: 50),
        Row(
          children: [
            Image.asset(AppStrings.image1),
            Image.asset(AppStrings.image2),
            Image.asset(AppStrings.image3),
          ],
        )
      ],
    );
  }
}
