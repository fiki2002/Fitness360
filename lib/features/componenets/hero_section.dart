import 'package:fitness360/constants/app_palette.dart';
import 'package:fitness360/constants/app_string.dart';
import 'package:fitness360/constants/app_typography.dart';
import 'package:fitness360/constants/common_widgets.dart';
import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          AppStrings.getFitNow,
          style: AppTypography.baseStyle(
            fontSize: 90,
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          AppStrings.yourPersonalFitness,
          style: AppTypography.baseStyle(
            fontSize: 90,
            fontWeight: FontWeight.w700,
          ),
        ),
        Common.gap(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildWidget(
                  text: AppStrings.twoHundredK,
                  subText: AppStrings.customers,
                ),
                Common.gap(height: 30),
                _buildWidget(
                  text: AppStrings.twoFifty,
                  subText: AppStrings.workers,
                ),
                Common.gap(height: 30),
                _buildWidget(
                  text: AppStrings.hundredPlus,
                  subText: AppStrings.fleet,
                ),
              ],
            ),
            SizedBox(
              width: 500,
              child: Stack(
                children: [
                  Image.asset(AppStrings.male),
                  Positioned(
                    right: 0,
                    top: 0,
                    left: 100,
                    child: Image.asset(AppStrings.female),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Achieve your fitness goals with our personalized workout\nplans, expert nutrition advice, and easy progress tracking. Join\nthousands of satisfied users who have transformed their lives!',
                  textAlign: TextAlign.end,
                  style: AppTypography.baseStyle(),
                ),
                Common.gap(height: 30),
                Row(
                  children: [
                    _buildContainer(
                      child: Text(
                        AppStrings.startNow,
                        style: AppTypography.baseStyle(
                          fontWeight: FontWeight.w700,
                          color: Pallette.white,
                        ),
                      ),
                    ),
                    Common.gap(width: 12),
                    _buildContainer(
                      color: Pallette.white,
                      child: Text(
                        AppStrings.downloadApp,
                        style: AppTypography.baseStyle(
                          fontWeight: FontWeight.w700,
                          color: Pallette.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        )
      ],
    );
  }

  Widget _buildWidget({required String text, required String subText}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: AppTypography.baseStyle(
            fontSize: 48,
            fontWeight: FontWeight.w800,
          ),
        ),
        Text(
          subText,
          style: AppTypography.baseStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Pallette.grey,
          ),
        ),
      ],
    );
  }

  Widget _buildContainer({Color? color, required Widget child}) {
    return Container(
      height: 52,
      width: 200,
      decoration: BoxDecoration(
        color: color ?? Pallette.containerBgColor,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Pallette.containerBgColor),
      ),
      child: Center(child: child),
    );
  }
}
