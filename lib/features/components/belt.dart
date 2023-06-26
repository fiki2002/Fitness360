import 'package:fitness360/constants/app_palette.dart';
import 'package:fitness360/constants/app_responsiveness.dart';
import 'package:fitness360/constants/app_string.dart';
import 'package:fitness360/constants/app_typography.dart';
import 'package:fitness360/constants/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Belt extends StatelessWidget {
  const Belt({super.key});

  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context).size;
    final isSmallMedium = ResponsiveWidget.isSmallScreen(context);
    return Column(
      children: [
        Common.gap(height: isSmallMedium ? 50 : 0),
        Container(
          height: isSmallMedium ? 100 : 200,
          width: data.width,
          color: Palette.containerBgColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Collaboration with',
                style: AppTypography.baseStyle(
                  color: Palette.white,
                  fontWeight: FontWeight.w700,
                  fontSize: isSmallMedium ? 16 : 24,
                ),
              ),
              Common.gap(height: isSmallMedium ? 20 : 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SvgPicture.asset(AppStrings.addidasIcon,
                      height: isSmallMedium ? 20 : 40),
                  SvgPicture.asset(
                    AppStrings.nikeIcon,
                    height: isSmallMedium ? 20 : 40,
                  ),
                  SvgPicture.asset(
                    AppStrings.newBalance,
                    height: isSmallMedium ? 20 : 40,
                  ),
                  SvgPicture.asset(
                    AppStrings.reebokIcon,
                    height: isSmallMedium ? 20 : 40,
                  ),
                  SvgPicture.asset(
                    AppStrings.otherDesigner,
                    height: isSmallMedium ? 20 : 40,
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
