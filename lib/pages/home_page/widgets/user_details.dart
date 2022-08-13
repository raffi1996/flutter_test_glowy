import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../extensions/extensions.dart';
import '../../../models/user_model/user_model.dart';
import '../../../themes/app_colors.dart';
import '../../../utils/assets.dart';

class UserDetails extends StatelessWidget {
  final UserModel user;

  const UserDetails({
    Key? key,
    required this.user,
  }) : super(key: key);


  Color get energyColor {
    if(user.energy <= 25 ){
      return AppColors.red;
    }
    else if(user.energy >= 26 && user.energy <= 51){
      return AppColors.progressColorRed;
    }
    else if(user.energy >= 51 && user.energy <= 75){
      return AppColors.mediumLightShadeOrange;
    }
    else{
      return AppColors.green;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 16,
        top: 32,
        right: 20,
      ),
      width: context.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Assets.avatarPlaceholder.svg(),
              const SizedBox(
                height: 2,
              ),
              Text(
                'homePage.level'.tr(
                  namedArgs: {'level': user.level.toString()},
                ),
                style: GoogleFonts.nunito(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: AppColors.white,
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Assets.star.svg().paddingOnly(right: 6),
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'homePage.points'.tr(),
                                style: GoogleFonts.nunito(
                                  fontSize: 12,
                                  color: AppColors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'homePage.level'.tr(
                                  namedArgs: {
                                    'level': user.level.toString(),
                                  },
                                ),
                                style: GoogleFonts.nunito(
                                  fontSize: 12,
                                  color: AppColors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: AppColors.darkShadeOfBlueMagenta,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Row(
                              children: [
                                if (user.level > 0)
                                  Expanded(
                                    flex: user.level,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: AppColors.progressColorRed,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      height: 16,
                                      child: Center(
                                        child: Text(
                                          '${user.level}/100',
                                          style: GoogleFonts.nunito(
                                            fontSize: 12,
                                            color: AppColors.white,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                if (user.level < 100)
                                  Expanded(
                                    flex: 100 - user.level,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: AppColors.darkShadeOfBlueMagenta,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      height: 16,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Assets.star.svg().paddingOnly(right: 6),
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'homePage.energy'.tr(),
                                style: GoogleFonts.nunito(
                                  fontSize: 12,
                                  color: AppColors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                '100%',
                                style: GoogleFonts.nunito(
                                  fontSize: 12,
                                  color: AppColors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: AppColors.darkShadeOfBlueMagenta,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Row(
                              children: [
                                if (user.energy > 0)
                                  Expanded(
                                    flex: user.energy,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: energyColor,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      height: 16,
                                      child: Center(
                                        child: FittedBox(
                                          child: Text(
                                            '${user.energy}%',
                                            style: GoogleFonts.nunito(
                                              fontSize: 12,
                                              color: AppColors.white,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                if (user.energy < 100)
                                  Expanded(
                                    flex: 100 - user.energy,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: AppColors.darkShadeOfBlueMagenta,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      height: 16,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 13,
                ),
                SizedBox(
                  width: 222,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'homePage.coins'.tr(),
                        style: GoogleFonts.nunito(
                          fontSize: 12,
                          color: AppColors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            '${user.coin}',
                            style: GoogleFonts.nunito(
                              fontSize: 12,
                              color: AppColors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Assets.coin.svg(),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
