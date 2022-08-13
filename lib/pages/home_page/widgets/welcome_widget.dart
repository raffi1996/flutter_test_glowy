import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../extensions/extensions.dart';
import '../../../themes/app_colors.dart';
import '../../../utils/assets.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.only(left: 16),
        decoration: const BoxDecoration(
          color: AppColors.darkShadeOfBlueMagenta,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'homePage.welcomeToGlowyStore'.tr(),
                  style: GoogleFonts.nunito(
                    color: AppColors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 2,),
                Text(
                  'homePage.completeTasks'.tr(),
                  style: GoogleFonts.nunito(
                    color: AppColors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            Assets.coinCat.svg(),
          ],
        ),
      ),
    ).paddingOnly(top: 24, right: 16,left: 16);
  }
}
