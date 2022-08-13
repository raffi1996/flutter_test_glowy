import 'package:freezed_annotation/freezed_annotation.dart';

part 'reward_model.freezed.dart';
part 'reward_model.g.dart';

@freezed
class RewardModel with _$RewardModel {
  factory RewardModel({
    required int type,
    required int level,
    required String iconPath,
  }) = _RewardModel;

  factory RewardModel.fromJson(Map<String, dynamic> json) => _$RewardModelFromJson(json);
}
