import 'package:fitness360/constants/app_palette.dart';
import 'package:fitness360/constants/app_responsiveness.dart';
import 'package:fitness360/constants/app_string.dart';
import 'package:fitness360/constants/app_typography.dart';
import 'package:fitness360/constants/common_widgets.dart';
import 'package:flutter/material.dart';

class WorkOutPlansSections extends StatelessWidget {
  const WorkOutPlansSections({super.key});

  @override
  Widget build(BuildContext context) {
    final isSmallMedium = ResponsiveWidget.isSmallScreen(context);

    return Column(
      children: [
        Common.gap(height: isSmallMedium ? 50 : 100),
        Text(
          'Customized Workout Plans',
          style: AppTypography.baseStyle(
            fontSize: isSmallMedium ? 24 : 40,
            fontWeight: FontWeight.w700,
          ),
        ),
        Common.gap(height: 16),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: isSmallMedium ? 12.0 : 0),
          child: Text(
            isSmallMedium
                ? 'Get ready to experience the power of personalized workouts designed specifically for you. Our fitness app takes into account your goals, fitness level, and preferences to create a tailored workout plan that maximizes results. Whether you\'re a beginner or an advanced athlete, we have the perfect plan to help you reach your full potential.'
                : 'Get ready to experience the power of personalized workouts designed specifically for you.\nOur fitness app takes into account your goals, fitness level, and preferences to create a\ntailored workout plan that maximizes results. Whether you\'re a beginner or an advanced\nathlete, we have the perfect plan to help you reach your full potential.',
            textAlign: TextAlign.center,
            maxLines: 20,
            style: AppTypography.baseStyle(
              fontSize: isSmallMedium ? 16 : 20,
            ),
          ),
        ),
        isSmallMedium
            ? const SizedBox.shrink()
            : SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Image.asset(AppStrings.i1),
                    Image.asset(AppStrings.i2),
                    Image.asset(AppStrings.i3),
                  ],
                ),
              ),
        Common.gap(height: 20),
        Container(
          width: 200,
          height: 52,
          decoration: BoxDecoration(
            color: Palette.containerBgColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              'JOIN US',
              style: AppTypography.baseStyle(
                fontSize: isSmallMedium ? 16 : 20,
                fontWeight: FontWeight.w700,
                color: Palette.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
