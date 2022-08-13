import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../extensions/extensions.dart';
import '../../../models/reward_model/reward_model.dart';
import '../../../themes/app_colors.dart';
import '../../../widgets/label_widget.dart';

class RewardsWidget extends StatelessWidget {
  final List<RewardModel> rewards;

  const RewardsWidget({
    Key? key,
    required this.rewards,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LabelWidget(
          labelName: 'homePage.rewards'.tr(),
        ),
        const SizedBox(
          height: 8,
        ),
        SizedBox(
          height: 72,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.only(left: 16, right: 5),
            clipBehavior: Clip.none,
            scrollDirection: Axis.horizontal,
            itemCount: rewards.length,
            itemBuilder: (_, index) {
              return Container(
                width: 72,
                margin: const EdgeInsets.only(right: 12),
                decoration: BoxDecoration(
                  color: AppColors.darkShadeOfBlueMagenta,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Image.asset(
                      rewards[index].iconPath,
                      width: 64,
                      height: 44,
                    ).paddingOnly(
                      left: 4,
                      right: 4,
                      top: 8,
                      bottom: 10,
                    ),
                    LinearPercentIndicator(
                      percent: rewards[index].level / 100,
                      barRadius: const Radius.circular(17),
                      lineHeight: 2,
                      progressColor: AppColors.mediumLightShadeOrange,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
