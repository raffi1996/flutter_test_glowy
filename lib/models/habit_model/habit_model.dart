import 'package:freezed_annotation/freezed_annotation.dart';

part 'habit_model.freezed.dart';

part 'habit_model.g.dart';

@freezed
class HabitModel with _$HabitModel {
  factory HabitModel({
    required String name,
  }) = _HabitModel;

  factory HabitModel.fromJson(Map<String, dynamic> json) => _$HabitModelFromJson(json);
}
