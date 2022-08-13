// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'today_task_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TodayTaskModel _$TodayTaskModelFromJson(Map<String, dynamic> json) {
  return _TodayTaskModel.fromJson(json);
}

/// @nodoc
class _$TodayTaskModelTearOff {
  const _$TodayTaskModelTearOff();

  _TodayTaskModel call(
      {required String name, required String iconPath, bool expired = false}) {
    return _TodayTaskModel(
      name: name,
      iconPath: iconPath,
      expired: expired,
    );
  }

  TodayTaskModel fromJson(Map<String, Object?> json) {
    return TodayTaskModel.fromJson(json);
  }
}

/// @nodoc
const $TodayTaskModel = _$TodayTaskModelTearOff();

/// @nodoc
mixin _$TodayTaskModel {
  String get name => throw _privateConstructorUsedError;
  String get iconPath => throw _privateConstructorUsedError;
  bool get expired => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodayTaskModelCopyWith<TodayTaskModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodayTaskModelCopyWith<$Res> {
  factory $TodayTaskModelCopyWith(
          TodayTaskModel value, $Res Function(TodayTaskModel) then) =
      _$TodayTaskModelCopyWithImpl<$Res>;
  $Res call({String name, String iconPath, bool expired});
}

/// @nodoc
class _$TodayTaskModelCopyWithImpl<$Res>
    implements $TodayTaskModelCopyWith<$Res> {
  _$TodayTaskModelCopyWithImpl(this._value, this._then);

  final TodayTaskModel _value;
  // ignore: unused_field
  final $Res Function(TodayTaskModel) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? iconPath = freezed,
    Object? expired = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      iconPath: iconPath == freezed
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as String,
      expired: expired == freezed
          ? _value.expired
          : expired // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$TodayTaskModelCopyWith<$Res>
    implements $TodayTaskModelCopyWith<$Res> {
  factory _$TodayTaskModelCopyWith(
          _TodayTaskModel value, $Res Function(_TodayTaskModel) then) =
      __$TodayTaskModelCopyWithImpl<$Res>;
  @override
  $Res call({String name, String iconPath, bool expired});
}

/// @nodoc
class __$TodayTaskModelCopyWithImpl<$Res>
    extends _$TodayTaskModelCopyWithImpl<$Res>
    implements _$TodayTaskModelCopyWith<$Res> {
  __$TodayTaskModelCopyWithImpl(
      _TodayTaskModel _value, $Res Function(_TodayTaskModel) _then)
      : super(_value, (v) => _then(v as _TodayTaskModel));

  @override
  _TodayTaskModel get _value => super._value as _TodayTaskModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? iconPath = freezed,
    Object? expired = freezed,
  }) {
    return _then(_TodayTaskModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      iconPath: iconPath == freezed
          ? _value.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as String,
      expired: expired == freezed
          ? _value.expired
          : expired // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TodayTaskModel implements _TodayTaskModel {
  _$_TodayTaskModel(
      {required this.name, required this.iconPath, this.expired = false});

  factory _$_TodayTaskModel.fromJson(Map<String, dynamic> json) =>
      _$$_TodayTaskModelFromJson(json);

  @override
  final String name;
  @override
  final String iconPath;
  @JsonKey()
  @override
  final bool expired;

  @override
  String toString() {
    return 'TodayTaskModel(name: $name, iconPath: $iconPath, expired: $expired)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TodayTaskModel &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.iconPath, iconPath) &&
            const DeepCollectionEquality().equals(other.expired, expired));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(iconPath),
      const DeepCollectionEquality().hash(expired));

  @JsonKey(ignore: true)
  @override
  _$TodayTaskModelCopyWith<_TodayTaskModel> get copyWith =>
      __$TodayTaskModelCopyWithImpl<_TodayTaskModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TodayTaskModelToJson(this);
  }
}

abstract class _TodayTaskModel implements TodayTaskModel {
  factory _TodayTaskModel(
      {required String name,
      required String iconPath,
      bool expired}) = _$_TodayTaskModel;

  factory _TodayTaskModel.fromJson(Map<String, dynamic> json) =
      _$_TodayTaskModel.fromJson;

  @override
  String get name;
  @override
  String get iconPath;
  @override
  bool get expired;
  @override
  @JsonKey(ignore: true)
  _$TodayTaskModelCopyWith<_TodayTaskModel> get copyWith =>
      throw _privateConstructorUsedError;
}
