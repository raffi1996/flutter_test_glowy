import 'dart:math' as math;

import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../extensions/extensions.dart';
import '../../../themes/app_colors.dart';
import '../../../utils/assets.dart';

class AppBarContent extends StatelessWidget {
  final String userName;

  const AppBarContent({
    Key? key,
    required this.userName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StretchableFlexibleSpace(
      stretchableBuilder: (stretchedAmount) {
        return Stack(
          children: [
            Opacity(
              opacity: stretchedAmount,
              child: Stack(
                children: [
                  Stack(
                    children: [
                      Positioned.fill(
                        child: ExtendedImage.asset(
                          Assets.appBarPhoto,
                          fit: BoxFit.cover,
                          height: 201,
                        ),
                      ),
                      Positioned(
                        top: 50,
                        left: 0,
                        right: 0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'homePage.hello'.tr(
                                    namedArgs: {
                                      'name': userName,
                                    },
                                  ),
                                  style: GoogleFonts.nunito(
                                    color: AppColors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: .8,
                                  ),
                                ),
                                SizedBox(
                                  height: 22,
                                  width: 22,
                                  child: Assets.settings.svg(),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Container(
                                height: 92,
                                color: AppColors.darkShadeOfBlueMagenta,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Mascot today advice',
                                          style: GoogleFonts.nunito(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
                                            color: AppColors.white,
                                            height: 1.5,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 2,
                                        ),
                                        Text(
                                          'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit.Ullamcorper in tristique',
                                          overflow: TextOverflow.ellipsis,
                                          style: GoogleFonts.nunito(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.white,
                                            height: 1.3,
                                          ),
                                        ),
                                      ],
                                    ).paddingOnly(
                                      top: 17,
                                      bottom: 17,
                                      left: 16,
                                    ),
                                    Assets.banner.svg(),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ).paddingHorizontal(16),
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: -1,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 24,
                      decoration: const BoxDecoration(
                        color: AppColors.scaffoldBackGroundColor,
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(32),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 36,
                            height: 5,
                            decoration: BoxDecoration(
                              color: AppColors.darkShadeOfBlueMagenta,
                              borderRadius: BorderRadius.circular(12),
                            ),
                          )
                        ],
                      ).paddingOnly(
                        top: 8,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Opacity(
              opacity: 1 - stretchedAmount,
              child: const SizedBox(),
            )
          ],
        );
      },
    );
  }
}

/// stretchedAmount is 1.0 when flexible space bar is expanded, and 0.0 when
/// fully collapsed
typedef StretchableBuilder = Widget Function(double stretchedAmount);

class StretchableFlexibleSpace extends StatelessWidget {
  final StretchableBuilder stretchableBuilder;

  const StretchableFlexibleSpace({
    Key? key,
    required this.stretchableBuilder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, c) {
        final settings = context
            .dependOnInheritedWidgetOfExactType<FlexibleSpaceBarSettings>();
        final deltaExtent = settings!.maxExtent - settings.minExtent;
        final t =
            (1.0 - (settings.currentExtent - settings.minExtent) / deltaExtent)
                .clamp(0.0, 1.0);
        final fadeStart = math.max(0.0, 1.0 - kToolbarHeight / deltaExtent);
        const fadeEnd = 1.0;
        final opacity = 1.0 - Interval(fadeStart, fadeEnd).transform(t);
        return stretchableBuilder(opacity);
      },
    );
  }
}