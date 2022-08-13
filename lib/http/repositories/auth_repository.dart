import 'dart:async';

import 'package:uuid/uuid.dart';

import '../../models/habit_model/habit_model.dart';
import '../../models/reward_model/reward_model.dart';
import '../../models/today_task_model/today_task_model.dart';
import '../../models/user_model/user_model.dart';

class AuthRepository {
  static Future<UserModel> getCurrentUser() async {
    ///todo generated model as there is no API

    final response = UserModel(
      id: const Uuid().v1(),
      email: 'Dilleros300405@gmail.com',
      firstName: 'Raffi',
      lastName: 'Martirosyan',
      level: 70,
      coin: 3235,
      energy: 25,
      rewards: [
        RewardModel(
          type: 1,
          level: 30,
          iconPath: 'assets/rewards_icon/1.png',
        ),
        RewardModel(
          type: 2,
          level: 20,
          iconPath: 'assets/rewards_icon/2.png',
        ),
        RewardModel(
          type: 3,
          level: 40,
          iconPath: 'assets/rewards_icon/3.png',
        ),
        RewardModel(
          type: 4,
          level: 70,
          iconPath: 'assets/rewards_icon/4.png',
        ),
        RewardModel(
          type: 2,
          level: 70,
          iconPath: 'assets/rewards_icon/2.png',
        ),
        RewardModel(
          type: 4,
          level: 70,
          iconPath: 'assets/rewards_icon/4.png',
        ),
        RewardModel(
          type: 1,
          level: 70,
          iconPath: 'assets/rewards_icon/1.png',
        ),
        RewardModel(
          type: 2,
          level: 70,
          iconPath: 'assets/rewards_icon/2.png',
        ),
      ],
      habits: [
        HabitModel(name: 'Swimming Pool'),
        HabitModel(name: 'Read 60 minutes a day'),
        HabitModel(name: 'Sleep 7-8 hours a night'),
        HabitModel(name: 'Walk 30 minutes a day.'),
      ],
      tasks: [
        TodayTaskModel(
          name: 'smoke less every day',
          iconPath: 'assets/task_icon/1.svg',
        ),
        TodayTaskModel(
          name: 'smoke less every day',
          iconPath: 'assets/task_icon/2.svg',
        ),
        TodayTaskModel(
          name: 'smoke less every day',
          iconPath: 'assets/task_icon/3.svg',
        ),
        TodayTaskModel(
          name: 'smoke less every day',
          iconPath: 'assets/task_icon/4.svg',
          expired: true,
        ),
      ],
    );
    return response;
  }
}
