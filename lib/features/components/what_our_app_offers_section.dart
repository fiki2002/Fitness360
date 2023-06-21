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
                    child: const SizedBox(),
                    context: context,
                  ),
                  Common.gap(height: 24),
                  _stackedContainer(
                    isOdd: false,
                    child: const SizedBox(),
                    context: context,
                  ),
                  Common.gap(height: 24),
                  _stackedContainer(
                    child: const SizedBox(),
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
    required Widget child,
    required BuildContext context,
    bool isOdd = true,
  }) {
    final data = MediaQuery.of(context).size;

    return Container(
      height: 160,
      margin: EdgeInsets.only(left: isOdd ? 150 : 0),
      width: data.width * 0.4,
      decoration: BoxDecoration(
        color: Palette.containerBgColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: child,
    );
  }
}
