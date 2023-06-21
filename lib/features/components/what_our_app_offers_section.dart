import 'package:fitness360/constants/app_palette.dart';
import 'package:fitness360/constants/app_string.dart';
import 'package:fitness360/constants/app_typography.dart';
import 'package:fitness360/constants/common_widgets.dart';
import 'package:flutter/material.dart';

class WhatOurAppOffers extends StatelessWidget {
  const WhatOurAppOffers({super.key});

  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: data.width * 0.06,
      ),
      child: Column(
        children: [
          Common.gap(height: 140),
          Text(
            AppStrings.whatOurAppOffers,
            style: AppTypography.baseStyle(
              fontSize: 40,
              fontWeight: FontWeight.w700,
            ),
          ),
          Common.gap(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildContainer(
                child: Container(),
              ),
              Common.gap(width: 20),
              _buildContainer(
                child: Container(),
              ),
              Common.gap(width: 20),
              _buildContainer(
                child: Container(),
              ),
            ],
          ),
          Common.gap(height: 100),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.whatUsersAreSaying,
                    textAlign: TextAlign.start,
                    style: AppTypography.baseStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 40,
                    ),
                  ),
                  Common.gap(height: 20),
                  Text(
                    AppStrings.incredibleSaying,
                    textAlign: TextAlign.start,
                    style: AppTypography.baseStyle(),
                  ),
                ],
              ),
              Column(
                children: [
                  _stackedContainer(
                    positionedValue: 115,
                    text: AppStrings.userName1,
                    image: AppStrings.person1,
                    context: context,
                  ),
                  Common.gap(height: 24),
                  _stackedContainer(
                    positionedValue: -40,
                    text: AppStrings.userName2,
                    image: AppStrings.person2,
                    isOdd: false,
                    context: context,
                  ),
                  Common.gap(height: 24),
                  _stackedContainer(
                    text: AppStrings.userName3,
                    positionedValue: 115,
                    image: AppStrings.person3,
                    context: context,
                  ),
                ],
              ),
            ],
          ),
          Common.gap(height: 100),
        ],
      ),
    );
  }

  Widget _buildContainer({required Widget child}) {
    return Expanded(
      child: Container(
        height: 360,
        decoration: BoxDecoration(
          color: Palette.containerBgColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: child,
      ),
    );
  }

  Widget _stackedContainer({
    required String text,
    required BuildContext context,
    required String image,
    bool isOdd = true,
    required double positionedValue,
  }) {
    final data = MediaQuery.of(context).size;

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 160,
          margin: EdgeInsets.only(left: isOdd ? 150 : 0),
          padding: const EdgeInsets.only(top: 20, left: 60),
          width: data.width * 0.4,
          decoration: BoxDecoration(
            color: Palette.containerBgColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
