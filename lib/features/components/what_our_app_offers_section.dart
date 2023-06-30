import 'package:fitness360/constants/app_palette.dart';
import 'package:fitness360/constants/app_responsiveness.dart';
import 'package:fitness360/constants/app_string.dart';
import 'package:fitness360/constants/app_typography.dart';
import 'package:fitness360/constants/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WhatOurAppOffers extends StatelessWidget {
  const WhatOurAppOffers({super.key});

  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context).size;
    final isSmallScreen = ResponsiveWidget.isSmallScreen(context);

    List<Widget> buildContainers = [
      _buildContainer(
        context,
        icon: AppStrings.img1,
        text1: AppStrings.expertText,
        text2: AppStrings.text1,
        isSmallScreen: isSmallScreen,
      ),
      Common.gap(width: 20),
      Common.gap(height: isSmallScreen ? 20 : 0),
      _buildContainer(
        context,
        icon: AppStrings.img2,
        text1: AppStrings.easyProgressTracking,
        text2: AppStrings.text2,
        isSmallScreen: isSmallScreen,
      ),
      Common.gap(width: 20),
      Common.gap(height: isSmallScreen ? 20 : 0),
      _buildContainer(
        context,
        icon: AppStrings.img3,
        text1: AppStrings.communityInspireU,
        text2: AppStrings.text3,
        isSmallScreen: isSmallScreen,
      ),
    ];
    List<Widget> usersFeedback = [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStrings.whatUsersAreSaying,
            textAlign: TextAlign.start,
            style: AppTypography.baseStyle(
              fontWeight: FontWeight.w700,
              fontSize: isSmallScreen ? 20 : 40,
            ),
          ),
          Common.gap(height: 20),
          Text(
            !(data.width < 1245)
                ? 'Don\'t Just Take Our Word For It - Hear What Our\nUsers Have To Say About Their Incredible\nTransformations:'
                : AppStrings.incredibleSaying,
            textAlign: TextAlign.start,
            style: AppTypography.baseStyle(
              fontSize: isSmallScreen ? 14 : 20,
            ),
          ),
        ],
      ),
      Common.gap(height: 20),
      Column(
        children: [
          _stackedContainer(
            positionedValue: (data.width > 880 && data.width < 1245)
                ? 40
                : (data.width < 880)
                    ? -40
                    : 115,
            text: AppStrings.userName1,
            image: AppStrings.person1,
            context: context,
            isSmallScreen: (data.width < 1245),
          ),
          Common.gap(height: 24),
          _stackedContainer(
            positionedValue: -40,
            text: AppStrings.userName2,
            image: AppStrings.person2,
            isOdd: false,
            isSmallScreen: (data.width < 1245),
            context: context,
          ),
          Common.gap(height: 24),
          _stackedContainer(
            text: AppStrings.userName3,
            positionedValue: (data.width > 880 && data.width < 1245)
                ? 40
                : (data.width < 880)
                    ? -40
                    : 115,
            image: AppStrings.person3,
            isSmallScreen: (data.width < 1245),
            context: context,
          ),
        ],
      ),
    ];
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: data.width * 0.06,
      ),
      child: Column(
        children: [
          Common.gap(height: isSmallScreen ? 70 : 140),
          Text(
            AppStrings.whatOurAppOffers,
            style: AppTypography.baseStyle(
              fontSize: isSmallScreen ? 20 : 40,
              fontWeight: FontWeight.w700,
            ),
          ),
          Common.gap(height: isSmallScreen ? 20 : 40),
          isSmallScreen
              ? Column(
                  children: buildContainers,
                )
              : Row(
                  children: buildContainers,
                ),
          Common.gap(height: isSmallScreen ? 50 : 100),
          (data.width < 1245)
              ? Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: usersFeedback,
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: usersFeedback,
                ),
          Common.gap(height: isSmallScreen ? 50 : 100),
        ],
      ),
    );
  }

  Widget _buildContainer(
    BuildContext context, {
    required String icon,
    text1,
    text2,
    bool isSmallScreen = false,
  }) {
    final data = MediaQuery.of(context).size;

    var container = Container(
      height: isSmallScreen ? data.height * 0.4 : data.height * 0.6,
      width: isSmallScreen ? double.infinity : data.width * 0.6,
      padding: const EdgeInsets.only(left: 20, bottom: 20, top: 30),
      decoration: BoxDecoration(
        color: Palette.containerBgColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(icon),
          Common.gap(height: 40),
          Text(
            text1,
            style: AppTypography.baseStyle(
              fontSize: 24,
              color: Palette.white,
              fontWeight: FontWeight.w700,
            ),
          ),
          Common.gap(height: 40),
          Text(
            text2,
            style: AppTypography.baseStyle(
              color: Palette.white,
            ),
          ),
        ],
      ),
    );
    if (isSmallScreen == true) {
      return container;
    } else {
      return Expanded(child: container);
    }
  }

  Widget _stackedContainer({
    required String text,
    required BuildContext context,
    required String image,
    bool isOdd = true,
    required double positionedValue,
    bool isSmallScreen = false,
  }) {
    final data = MediaQuery.of(context).size;

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: (data.width < 1245) ? 200 : 160,
          margin: EdgeInsets.only(
            left: (data.width > 880 && data.width < 1245 && isOdd)
                ? 80
                : (isOdd && !isSmallScreen)
                    ? 150
                    : (isOdd & !isSmallScreen)
                        ? 100
                        : 0,
          ),
          padding:
              EdgeInsets.only(top: 20, left: (data.width < 1245) ? 50 : 60),
          width: isSmallScreen ? data.width * 0.8 : data.width * 0.4,
          decoration: BoxDecoration(
            color: Palette.containerBgColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppStrings.userFeedback1,
                style: AppTypography.baseStyle(
                  fontSize: 14,
                  color: Palette.white,
                ),
              ),
              Common.gap(height: 16),
              Text(
                text,
                style: AppTypography.baseStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Palette.white,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          left: positionedValue,
          top: 10,
          child: CircleAvatar(
            backgroundImage: AssetImage(image),
            radius: 40,
          ),
        )
      ],
    );
  }
}
