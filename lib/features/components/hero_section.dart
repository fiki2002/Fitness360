import 'package:fitness360/constants/app_palette.dart';
import 'package:fitness360/constants/app_responsiveness.dart';
import 'package:fitness360/constants/app_string.dart';
import 'package:fitness360/constants/app_typography.dart';
import 'package:fitness360/constants/common_widgets.dart';
import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context).size;
    final isSmallMedium = ResponsiveWidget.isSmallScreen(context);

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: (data.width > 1100 && data.width < 1500)
            ? data.width * 0.04
            : isSmallMedium
                ? data.width * 0.04
                : data.width * 0.06,
      ),
      child: Column(
        children: [
          Text(
            AppStrings.getFitNow,
            textAlign: TextAlign.center,
            style: AppTypography.baseStyle(
              fontSize: isSmallMedium ? 60 : 90,
              fontWeight: FontWeight.w700,
            ),
          ),
          Row(
            mainAxisAlignment: (data.width > 1100 && data.width < 1500)
                ? MainAxisAlignment.spaceBetween
                : isSmallMedium || ResponsiveWidget.isMediumScreen(context)
                    ? MainAxisAlignment.center
                    : MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              isSmallMedium ||
                      ResponsiveWidget.isMediumScreen(context) ||
                      (data.width > 1100 && data.width < 1500)
                  ? const SizedBox.shrink()
                  : Padding(
                      padding: const EdgeInsets.only(top: 130.0),
                      child: Column(
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
                    ),

              /// Image Widget
              ResponsiveWidget.isMediumScreen(context)
                  ? Center(child: Image.asset(AppStrings.maleFemale))
                  : isSmallMedium
                      ? const SizedBox.shrink()
                      : Image.asset(AppStrings.maleFemale),

              /// Side Text
              ResponsiveWidget.isMediumScreen(context) ||
                      (data.width > 1200 && data.width < 1210)
                  ? const SizedBox.shrink()
                  : Padding(
                      padding: const EdgeInsets.only(top: 50.0),
                      child: Column(
                        crossAxisAlignment: isSmallMedium
                            ? CrossAxisAlignment.center
                            : CrossAxisAlignment.end,
                        children: [
                          SizedBox(
                            width: ResponsiveWidget.isLargeScreen(context)
                                ? data.width * 0.3
                                : data.width * 0.6,
                            child: Text(
                              AppStrings.achieveText,
                              textAlign: isSmallMedium
                                  ? TextAlign.center
                                  : TextAlign.end,
                              softWrap: true,
                              maxLines: 20,
                              style: AppTypography.baseStyle(),
                            ),
                          ),
                          Common.gap(height: 30),
                          Row(
                            children: [
                              _buildContainer(
                                context,
                                child: Text(
                                  AppStrings.startNow,
                                  style: AppTypography.baseStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: isSmallMedium ? 17 : 20,
                                    color: Palette.white,
                                  ),
                                ),
                              ),
                              Common.gap(width: 12),
                              _buildContainer(
                                context,
                                color: Palette.white,
                                child: Text(
                                  AppStrings.downloadApp,
                                  style: AppTypography.baseStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: isSmallMedium ? 17 : 20,
                                    color: Palette.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
            ],
          ),
          ResponsiveWidget.isMediumScreen(context) ||
                  (data.width > 1200 && data.width < 1210)
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Common.gap(height: 50),
                    Text(
                      'Achieve your fitness goals with our personalized workout\nplans, expert nutrition advice, and easy progress tracking. Join\nthousands of satisfied users who have transformed their lives!',
                      textAlign: TextAlign.center,
                      softWrap: true,
                      maxLines: 20,
                      style: AppTypography.baseStyle(),
                    ),
                    Common.gap(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildContainer(
                          context,
                          child: Text(
                            AppStrings.startNow,
                            style: AppTypography.baseStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: isSmallMedium ? 17 : 20,
                              color: Palette.white,
                            ),
                          ),
                        ),
                        Common.gap(width: 12),
                        _buildContainer(
                          context,
                          color: Palette.white,
                          child: Text(
                            AppStrings.downloadApp,
                            style: AppTypography.baseStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: isSmallMedium ? 17 : 20,
                              color: Palette.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Common.gap(height: 50),
                  ],
                )
              : const SizedBox.shrink(),
        ],
      ),
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
            color: Palette.grey,
          ),
        ),
      ],
    );
  }

  Widget _buildContainer(BuildContext context,
      {Color? color, required Widget child}) {
    return Container(
      height: 52,
      width: 200,
      decoration: BoxDecoration(
        color: color ?? Palette.containerBgColor,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Palette.containerBgColor),
      ),
      child: Center(child: child),
    );
  }
}
