import 'package:fitness360/constants/app_palette.dart';
import 'package:fitness360/constants/app_string.dart';
import 'package:fitness360/constants/app_typography.dart';
import 'package:fitness360/constants/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context).size;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: data.width * 0.06,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppStrings.joinOurNewsLetter,
                        style: AppTypography.baseStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Common.gap(height: 16),
                      Text(
                        AppStrings.niceLetterOffer,
                        style: AppTypography.baseStyle(),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Container(
                        height: 52,
                        width: data.width * 0.2,
                        padding: const EdgeInsets.only(left: 20),
                        decoration: const BoxDecoration(
                          color: Palette.containerBgVariant,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            topRight: Radius.circular(8),
                            bottomRight: Radius.circular(8),
                          ),
                        ),
                        child: Row(
                          children: [
                            Text(
                              AppStrings.enterYourEmail,
                              style: AppTypography.baseStyle(
                                color: Palette.containerBgColor,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 52,
                        width: data.width * 0.1,
                        decoration: BoxDecoration(
                          color: Palette.containerBgColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Text(
                            AppStrings.subscribe,
                            style: AppTypography.baseStyle(
                              color: Palette.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Common.gap(height: 100),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset(AppStrings.logoIcon),
                      Common.gap(height: 10),
                      Text(
                        AppStrings.aboutUs,
                        style: AppTypography.baseStyle(),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppStrings.ourSocialMedia,
                        textAlign: TextAlign.start,
                        style: AppTypography.baseStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Common.gap(height: 10),
                      Row(
                        children: [
                          _buildContainer(icon: AppStrings.instaIcon),
                          Common.gap(width: 24),
                          _buildContainer(icon: AppStrings.fbIcon),
                          Common.gap(width: 24),
                          _buildContainer(icon: AppStrings.twitterIcon),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              Common.gap(height: 100),
            ],
          ),
        ),
        const Divider(
          color: Palette.borderColor,
          thickness: 2,
        ),
        Common.gap(height: 30),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: data.width * 0.06,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPicture.asset(AppStrings.copyRightIcon),
                  Text(
                    AppStrings.fitness360,
                    style: AppTypography.baseStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SvgPicture.asset(AppStrings.logoIcon),
              Text(
                AppStrings.termsAndPolicy,
                style: AppTypography.baseStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        Common.gap(height: 30),
      ],
    );
  }

  _buildContainer({required String icon}) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: Palette.containerBgColor,
        borderRadius: BorderRadius.circular(7.2),
      ),
      child: Center(
        child: SvgPicture.asset(icon),
      ),
    );
  }
}
