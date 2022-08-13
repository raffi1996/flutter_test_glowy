// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'today_task_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TodayTaskModel _$$_TodayTaskModelFromJson(Map json) => _$_TodayTaskModel(
      name: json['name'] as String,
      iconPath: json['iconPath'] as String,
      expired: json['expired'] as bool? ?? false,
    );

Map<String, dynamic> _$$_TodayTaskModelToJson(_$_TodayTaskModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'iconPath': instance.iconPath,
      'expired': instance.expired,
    };
