import 'package:fitness360/constants/app_palette.dart';
import 'package:fitness360/constants/app_typography.dart';
import 'package:fitness360/constants/common_widgets.dart';
import 'package:flutter/material.dart';

class WorkOutPlansSections extends StatelessWidget {
  const WorkOutPlansSections({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Common.gap(height: 100),
        Text(
          'Customized Workout Plans',
          style: AppTypography.baseStyle(
            fontSize: 40,
            fontWeight: FontWeight.w700,
          ),
        ),
        Common.gap(height: 16),
        Text(
          'Get ready to experience the power of personalized workouts designed specifically for you.\nOur fitness app takes into account your goals, fitness level, and preferences to create a\ntailored workout plan that maximizes results. Whether you\'re a beginner or an advanced\nathlete, we have the perfect plan to help you reach your full potential.',
          textAlign: TextAlign.center,
          style: AppTypography.baseStyle(),
        ),
        Container(
          height: 400,
          decoration: const BoxDecoration(
            color: Colors.amberAccent,
          ),
        ),
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
