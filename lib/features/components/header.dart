import 'dart:developer';

import 'package:fitness360/constants/app_palette.dart';
import 'package:fitness360/constants/app_responsiveness.dart';
import 'package:fitness360/constants/app_string.dart';
import 'package:fitness360/constants/app_typography.dart';
import 'package:fitness360/constants/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Header extends StatelessWidget {
  ///Creates a widget that builds the header and its content.
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context).size;
    log(data.width.toString());
    final isSmallMedium = ResponsiveWidget.isSmallScreen(context);

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: isSmallMedium ? data.width * 0.04 : data.width * 0.08,
        vertical: data.height * 0.04,
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            AppStrings.logoIcon,
            height: isSmallMedium ? 40 : 50,
          ),
          const Spacer(),
          isSmallMedium
              ? SvgPicture.asset(
                  AppStrings.menu,
                  height: 40,
                )
              : _buildHeader(context),
        ],
      ),
    );
  }

  _buildHeader(BuildContext context) {
    final data = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 15,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Palette.borderColor,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 27,
              vertical: 10,
            ),
            decoration: BoxDecoration(
              color: Palette.containerBgColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Text(
                AppStrings.home,
                style: AppTypography.baseStyle(
                  color: Palette.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          Common.gap(width: data.width * 0.01),
          Text(
            'Service',
            style: AppTypography.baseStyle(
              fontWeight: FontWeight.w700,
            ),
          ),
          Common.gap(width: data.width * 0.01),
          Text(
            'Pricing',
            style: AppTypography.baseStyle(
              fontWeight: FontWeight.w700,
            ),
          ),
          Common.gap(width: data.width * 0.01),
          Text(
            'Why Us',
            style: AppTypography.baseStyle(
              fontWeight: FontWeight.w700,
            ),
          ),
          Common.gap(width: data.width * 0.01),
          Text(
            'Our Work',
            style: AppTypography.baseStyle(
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
