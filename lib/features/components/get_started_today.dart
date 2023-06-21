import 'package:fitness360/constants/app_palette.dart';
import 'package:fitness360/constants/app_string.dart';
import 'package:fitness360/constants/app_typography.dart';
import 'package:fitness360/constants/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GetStartedToday extends StatelessWidget {
  const GetStartedToday({super.key});

  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context).size;

    return Column(
      children: [
        Container(
          width: data.width,
          height: data.width * 0.25,
          color: Palette.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppStrings.getStartedToday,
                style: AppTypography.baseStyle(
                  fontWeight: FontWeight.w700,
                  color: Palette.white,
                  fontSize: 40,
                ),
              ),
              Common.gap(height: 20),
              Text(
                AppStrings.getStartedSubText,
                textAlign: TextAlign.center,
                style: AppTypography.baseStyle(
                  color: Palette.white,
                ),
              ),
              Common.gap(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppStrings.availableIn,
                    style: AppTypography.baseStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                      color: Palette.white,
                    ),
                  ),
                  Common.gap(width: 40),
                  _buildContainer(
                      icon: AppStrings.appleIcon, text: AppStrings.apple),
                  Common.gap(width: 20),
                  _buildContainer(
                      icon: AppStrings.playStoreIcon,
                      text: AppStrings.playStore),
                ],
              ),
            ],
          ),
        ),
        Common.gap(height: 100),
      ],
    );
  }

  Widget _buildContainer({required String icon, required String text}) {
    return Container(
      height: 52,
      width: 200,
      decoration: BoxDecoration(
        color: Palette.containerBgColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(icon),
          Common.gap(width: 5),
          Text(
            text,
            style: AppTypography.baseStyle(
              color: Palette.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
