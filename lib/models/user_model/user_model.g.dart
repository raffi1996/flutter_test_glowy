// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map json) => _$_UserModel(
      email: json['email'] as String?,
      id: json['id'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      level: json['level'] as int? ?? 0,
      energy: json['energy'] as int? ?? 0,
      coin: json['coin'] as int? ?? 0,
      rewards: (json['rewards'] as List<dynamic>?)
              ?.map((e) =>
                  RewardModel.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const [],
      habits: (json['habits'] as List<dynamic>?)
              ?.map((e) =>
                  HabitModel.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const [],
      tasks: (json['tasks'] as List<dynamic>?)
              ?.map((e) =>
                  TodayTaskModel.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('email', instance.email);
  writeNotNull('id', instance.id);
  writeNotNull('createdAt', instance.createdAt?.toIso8601String());
  writeNotNull('updatedAt', instance.updatedAt?.toIso8601String());
  writeNotNull('firstName', instance.firstName);
  writeNotNull('lastName', instance.lastName);
  val['level'] = instance.level;
  val['energy'] = instance.energy;
  val['coin'] = instance.coin;
  val['rewards'] = instance.rewards.map((e) => e.toJson()).toList();
  val['habits'] = instance.habits.map((e) => e.toJson()).toList();
  val['tasks'] = instance.tasks.map((e) => e.toJson()).toList();
  return val;
}
