// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'reward_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RewardModel _$RewardModelFromJson(Map<String, dynamic> json) {
  return _RewardModel.fromJson(json);
}

/// @nodoc
class _$RewardModelTearOff {
  const _$RewardModelTearOff();

  _RewardModel call(
      {required int type, required int level, required String iconPath}) {
    return _RewardModel(
      type: type,
      level: level,
      iconPath: iconPath,
    );
  }

  RewardModel fromJson(Map<String, Object?> json) {
    return RewardModel.fromJson(json);
  }
}

/// @nodoc
const $RewardModel = _$RewardModelTearOff();

/// @nodoc
mixin _$RewardModel {
  int get type => throw _privateConstructorUsedError;
  int get level => throw _privateConstructorUsedError;
  String get iconPath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RewardModelCopyWith<RewardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardModelCopyWith<$Res> {
  factory $RewardModelCopyWith(
          RewardModel value, $Res Function(RewardModel) then) =
      _$RewardModelCopyWithImpl<$Res>;
  $Res call({int type, int level, String iconPath});
}

/// @nodoc
class _$RewardModelCopyWithImpl<$Res> implements $RewardModelCopyWith<$Res> {
  _$RewardModelCopyWithImpl(this._value, this._then);

  final RewardModel _value;
  // ignore: unused_field
  final $Res Function(RewardModel) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? level = freezed,
    Object? iconPath = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      iconPath: iconPath == freezed
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$RewardModelCopyWith<$Res>
    implements $RewardModelCopyWith<$Res> {
  factory _$RewardModelCopyWith(
          _RewardModel value, $Res Function(_RewardModel) then) =
      __$RewardModelCopyWithImpl<$Res>;
  @override
  $Res call({int type, int level, String iconPath});
}

/// @nodoc
class __$RewardModelCopyWithImpl<$Res> extends _$RewardModelCopyWithImpl<$Res>
    implements _$RewardModelCopyWith<$Res> {
  __$RewardModelCopyWithImpl(
      _RewardModel _value, $Res Function(_RewardModel) _then)
      : super(_value, (v) => _then(v as _RewardModel));

  @override
  _RewardModel get _value => super._value as _RewardModel;

  @override
  $Res call({
    Object? type = freezed,
    Object? level = freezed,
    Object? iconPath = freezed,
  }) {
    return _then(_RewardModel(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      iconPath: iconPath == freezed
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RewardModel implements _RewardModel {
  _$_RewardModel(
      {required this.type, required this.level, required this.iconPath});

  factory _$_RewardModel.fromJson(Map<String, dynamic> json) =>
      _$$_RewardModelFromJson(json);

  @override
  final int type;
  @override
  final int level;
  @override
  final String iconPath;

  @override
  String toString() {
    return 'RewardModel(type: $type, level: $level, iconPath: $iconPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RewardModel &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.level, level) &&
            const DeepCollectionEquality().equals(other.iconPath, iconPath));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(level),
      const DeepCollectionEquality().hash(iconPath));

  @JsonKey(ignore: true)
  @override
  _$RewardModelCopyWith<_RewardModel> get copyWith =>
      __$RewardModelCopyWithImpl<_RewardModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RewardModelToJson(this);
  }
}

abstract class _RewardModel implements RewardModel {
  factory _RewardModel(
      {required int type,
      required int level,
      required String iconPath}) = _$_RewardModel;

  factory _RewardModel.fromJson(Map<String, dynamic> json) =
      _$_RewardModel.fromJson;

  @override
  int get type;
  @override
  int get level;
  @override
  String get iconPath;
  @override
  @JsonKey(ignore: true)
  _$RewardModelCopyWith<_RewardModel> get copyWith =>
      throw _privateConstructorUsedError;
}
