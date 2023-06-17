import 'package:fitness360/constants/app_palette.dart';
import 'package:fitness360/constants/app_typography.dart';
import 'package:fitness360/constants/common_widgets.dart';
import 'package:flutter/material.dart';

class Belt extends StatelessWidget {
  const Belt({super.key});

  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context).size;

    return Container(
      height: 200,
      width: data.width,
      color: Pallette.containerBgColor,
      child: Column(
        children: [
          Common.gap(height: 20),
          Text(
            'Collaboration with',
            style: AppTypography.baseStyle(
              color: Pallette.white,
              fontWeight: FontWeight.w700,
              fontSize: 24,
            ),
          ),
        ],
      ),
    );
  }
}
