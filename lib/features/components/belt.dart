import 'package:fitness360/constants/app_palette.dart';
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

    return Container(
      height: 200,
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
              fontSize: 24,
            ),
          ),
          Common.gap(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset(AppStrings.addidasIcon),
              SvgPicture.asset(AppStrings.nikeIcon),
              SvgPicture.asset(AppStrings.newBalance),
              SvgPicture.asset(AppStrings.reebokIcon),
              SvgPicture.asset(AppStrings.otherDesigner),
            ],
          )
        ],
      ),
    );
  }
}
