import 'package:fitness360/constants/app_palette.dart';
import 'package:fitness360/constants/app_string.dart';
import 'package:fitness360/constants/app_typography.dart';
import 'package:fitness360/constants/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

///Creates a widget that builds the header and its content.
class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: data.width * 0.06,
        vertical: data.height * 0.04,
      ),
      child: Row(
        children: [
          SvgPicture.asset(AppStrings.logoIcon),
          const Spacer(),
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 12,
              horizontal: 15,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: Pallette.borderColor,
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
                    color: Pallette.containerBgColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text(
                      AppStrings.home,
                      style: AppTypography.baseStyle(
                        color: Pallette.white,
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
          )
        ],
      ),
    );
  }
}
