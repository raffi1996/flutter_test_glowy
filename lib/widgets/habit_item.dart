import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:google_fonts/google_fonts.dart';

import '../extensions/extensions.dart';
import '../models/habit_model/habit_model.dart';
import '../providers/screen_service.dart';
import '../store/auth/auth_state.dart';
import '../store/habit_state/habit_state.dart';
import '../store/store.dart';
import '../themes/app_colors.dart';
import '../utils/assets.dart';

class HabitItem extends StatefulWidget {
  final HabitModel habit;
  final VoidCallback onTap;

  const HabitItem({
    Key? key,
    required this.habit,
    required this.onTap,
  }) : super(key: key);

  @override
  State<HabitItem> createState() => _HabitItemState();
}

class _HabitItemState extends State<HabitItem> {
  final authState = locator<AuthState>();
  final habitState = HabitState();

  @override
  void initState() {
    super.initState();
    habitState.weekDays();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width - 16,
      margin: const EdgeInsets.only(
        right: 12,
      ),
      padding: const EdgeInsets.only(top: 12, right: 14, bottom: 21),
      decoration: BoxDecoration(
        color: AppColors.darkShadeOfBlueMagenta,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: AppColors.darkGray,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Assets.goodSile.svg(
                      width: 24,
                      height: 24,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.habit.name,
                        style: GoogleFonts.nunito(
                          fontSize: 16,
                          color: AppColors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Row(
                        children: [
                          Assets.pets.svg(),
                          Assets.pets.svg(),
                          const SizedBox(
                            width: 6,
                          ),
                          Text(
                            '+6',
                            style: GoogleFonts.nunito(
                              fontSize: 10,
                              color: AppColors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          Assets.star.svg(
                            width: 16,
                            height: 16,
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          Text(
                            '+4',
                            style: GoogleFonts.nunito(
                              fontSize: 10,
                              color: AppColors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          Assets.coin.svg(
                            width: 16,
                            height: 16,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  alertDialog(context);
                },
                child: Assets.trash.svg(),
              ),
            ],
          ).paddingOnly(
            left: 14,
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              for (var i = 0; i < habitState.weekdays.length; ++i)
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      if (i != 0)
                        Observer(
                          builder: (_) => Expanded(
                            child: Container(
                              margin: EdgeInsets.only(
                                top: DateTime.now().day.toString() ==
                                        habitState.days[i]
                                    ? 6
                                    : 14,
                              ),
                              height: 2,
                              color: habitState.checkedDays[i + 1] == true &&
                                      habitState.checkedDays[i] == true
                                  ? AppColors.mediumLightShadeOrange
                                  : Colors.transparent,
                            ),
                          ),
                        ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            habitState.weekdays[i],
                            style: GoogleFonts.nunito(
                              fontSize: 12,
                              color: AppColors.mediumLightShadeOrange,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          GestureDetector(
                            onTap: () {
                              if (habitState.checkedDays[i + 1] == false) {
                                habitState.checkedDays[i + 1] = true;
                                widget.onTap();
                              } else {
                                habitState.checkedDays[i + 1] = false;
                              }
                            },
                            child: Observer(
                              builder: (_) => Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: habitState.checkedDays[i + 1] == true
                                      ? DateTime.now().day.toString() ==
                                              habitState.days[i]
                                          ? AppColors.progressColorRed
                                          : AppColors.mediumLightShadeOrange
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                    width: 2,
                                    color: DateTime.now().day.toString() ==
                                            habitState.days[i]
                                        ? AppColors.progressColorRed
                                        : AppColors.mediumLightShadeOrange,
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    habitState.days[i],
                                    style: GoogleFonts.nunito(
                                      fontSize: 10,
                                      color: AppColors.white,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          if (DateTime.now().day.toString() ==
                              habitState.days[i])
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                const SizedBox(
                                  height: 3,
                                ),
                                Container(
                                  width: 6,
                                  height: 6,
                                  decoration: BoxDecoration(
                                    color: AppColors.progressColorRed,
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                )
                              ],
                            )
                        ],
                      ),
                    ],
                  ).paddingOnly(
                    top: DateTime.now().day.toString() == habitState.days[i]
                        ? 9
                        : 0,
                  ),
                ),
            ],
          )
        ],
      ),
    );
  }

  void alertDialog(BuildContext context) {
    showCupertinoDialog(
      barrierDismissible: true,
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: Text(
            'homePage.areYouSure'.tr(),
          ),
          actions: [
            CupertinoDialogAction(
              onPressed: router.pop,
              child: Text(
                'keywords.yes'.tr(),
              ),
            ),
            CupertinoDialogAction(
              onPressed: router.pop,
              child: Text(
                'keywords.no'.tr(),
              ),
            ),
          ],
        );
      },
    );
  }
}
