import 'package:freezed_annotation/freezed_annotation.dart';

part 'today_task_model.freezed.dart';

part 'today_task_model.g.dart';

@freezed
class TodayTaskModel with _$TodayTaskModel {
  factory TodayTaskModel({
    required String name,
    required String iconPath,
    @Default(false) bool expired,
  }) = _TodayTaskModel;

  factory TodayTaskModel.fromJson(Map<String, dynamic> json) =>
      _$TodayTaskModelFromJson(json);
}
