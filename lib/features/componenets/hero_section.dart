import 'package:fitness360/constants/app_typography.dart';
import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Text(
          'Get Fit Now:',
          style: AppTypography.baseStyle(
            fontSize: 90,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
