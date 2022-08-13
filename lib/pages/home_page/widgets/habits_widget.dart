import 'package:flutter/material.dart';
import '../../../extensions/extensions.dart';
import '../../../models/habit_model/habit_model.dart';
import '../../../widgets/habit_item.dart';
import '../../../widgets/label_widget.dart';

class HabitsWidget extends StatelessWidget {
  final List<HabitModel> habits;
  final VoidCallback onTap;

  const HabitsWidget({
    Key? key,
    required this.habits,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LabelWidget(
          labelName: 'homePage.habits'.tr(),
        ),
        SizedBox(
          height: 161,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            clipBehavior: Clip.none,
            padding: const EdgeInsets.only(left: 16),
            scrollDirection: Axis.horizontal,
            itemCount: habits.length,
            itemBuilder: (_, index) {
              return HabitItem(
                onTap: onTap,
                habit: habits[index],
              );
            },
          ),
        )
      ],
    );
  }
}
