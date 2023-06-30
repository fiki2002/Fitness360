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
    List<Widget> children = [
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
      Common.gap(height: 10),
      SvgPicture.asset(AppStrings.logoIcon),
      Common.gap(height: 10),
      Text(
        AppStrings.termsAndPolicy,
        style: AppTypography.baseStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    ];
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: data.width * 0.06,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              (data.width < 930)
                  ? Column(
                      children: [
                        Column(
                          children: [
                            Text(
                              AppStrings.joinOurNewsLetter,
                              style: AppTypography.baseStyle(
                                fontSize: (data.width < 930) ? 20 : 40,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Common.gap(height: 10),
                            Text(
                              AppStrings.niceLetterOffer,
                              style: AppTypography.baseStyle(
                                fontSize: (data.width < 930) ? 14 : 20,
                              ),
                            ),
                          ],
                        ),
                        Common.gap(height: 20),
                        Row(
                          children: [
                            Container(
                              height: 52,
                              width: data.width * 0.68,
                              padding: const EdgeInsets.only(left: 20),
                              decoration: const BoxDecoration(
                                color: Palette.containerBgVariant,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  bottomLeft: Radius.circular(8),
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
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 52,
                              width: data.width * 0.2,
                              decoration: BoxDecoration(
                                color: Palette.containerBgColor,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Center(
                                child: Text(
                                  AppStrings.subscribe,
                                  style: AppTypography.baseStyle(
                                    color: Palette.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  : Row(
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
                                  topLeft: Radius.circular(8),
                                  bottomLeft: Radius.circular(8),
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
                                      fontSize: 14,
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
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
              Common.gap(height: (data.width < 930) ? 40 : 100),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset(AppStrings.logoIcon),
                      Common.gap(height: 10),
                      Text(
                        AppStrings.aboutUs,
                        style: AppTypography.baseStyle(
                            fontSize: (data.width < 930) ? 14 : 20),
                      ),
                    ],
                  ),
                  const Spacer(),
                  (data.width < 930)
                      ? const SizedBox.shrink()
                      : Column(
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
              (data.width < 930)
                  ? Common.gap(height: 48)
                  : const SizedBox.shrink(),
              (data.width < 930)
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          AppStrings.ourSocialMedia,
                          textAlign: TextAlign.start,
                          style: AppTypography.baseStyle(
                            fontSize: (data.width < 930) ? 20 : 24,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Common.gap(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _buildContainer(icon: AppStrings.instaIcon),
                            Common.gap(width: 24),
                            _buildContainer(icon: AppStrings.fbIcon),
                            Common.gap(width: 24),
                            _buildContainer(icon: AppStrings.twitterIcon),
                          ],
                        )
                      ],
                    )
                  : const SizedBox.shrink(),
              Common.gap(height: (data.width < 930) ? 48 : 100),
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
          child: (data.width < 930)
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: children,
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: children,
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
