import 'package:freezed_annotation/freezed_annotation.dart';

import '../habit_model/habit_model.dart';
import '../reward_model/reward_model.dart';
import '../today_task_model/today_task_model.dart';

part 'user_model.freezed.dart';

part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  UserModel._();

  factory UserModel({
    String? email,
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? firstName,
    String? lastName,
    @Default(0) int level,
    @Default(0) int energy,
    @Default(0) int coin,
    @Default([])List<RewardModel> rewards,
    @Default([]) List<HabitModel> habits,
    @Default([]) List<TodayTaskModel> tasks,
  }) = _UserModel;

  late final fullName = '$firstName $lastName';

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
