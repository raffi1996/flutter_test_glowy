// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'habit_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HabitModel _$HabitModelFromJson(Map<String, dynamic> json) {
  return _HabitModel.fromJson(json);
}

/// @nodoc
class _$HabitModelTearOff {
  const _$HabitModelTearOff();

  _HabitModel call({required String name}) {
    return _HabitModel(
      name: name,
    );
  }

  HabitModel fromJson(Map<String, Object?> json) {
    return HabitModel.fromJson(json);
  }
}

/// @nodoc
const $HabitModel = _$HabitModelTearOff();

/// @nodoc
mixin _$HabitModel {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HabitModelCopyWith<HabitModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HabitModelCopyWith<$Res> {
  factory $HabitModelCopyWith(
          HabitModel value, $Res Function(HabitModel) then) =
      _$HabitModelCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$HabitModelCopyWithImpl<$Res> implements $HabitModelCopyWith<$Res> {
  _$HabitModelCopyWithImpl(this._value, this._then);

  final HabitModel _value;
  // ignore: unused_field
  final $Res Function(HabitModel) _then;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$HabitModelCopyWith<$Res> implements $HabitModelCopyWith<$Res> {
  factory _$HabitModelCopyWith(
          _HabitModel value, $Res Function(_HabitModel) then) =
      __$HabitModelCopyWithImpl<$Res>;
  @override
  $Res call({String name});
}

/// @nodoc
class __$HabitModelCopyWithImpl<$Res> extends _$HabitModelCopyWithImpl<$Res>
    implements _$HabitModelCopyWith<$Res> {
  __$HabitModelCopyWithImpl(
      _HabitModel _value, $Res Function(_HabitModel) _then)
      : super(_value, (v) => _then(v as _HabitModel));

  @override
  _HabitModel get _value => super._value as _HabitModel;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_HabitModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HabitModel implements _HabitModel {
  _$_HabitModel({required this.name});

  factory _$_HabitModel.fromJson(Map<String, dynamic> json) =>
      _$$_HabitModelFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'HabitModel(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HabitModel &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$HabitModelCopyWith<_HabitModel> get copyWith =>
      __$HabitModelCopyWithImpl<_HabitModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HabitModelToJson(this);
  }
}

abstract class _HabitModel implements HabitModel {
  factory _HabitModel({required String name}) = _$_HabitModel;

  factory _HabitModel.fromJson(Map<String, dynamic> json) =
      _$_HabitModel.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$HabitModelCopyWith<_HabitModel> get copyWith =>
      throw _privateConstructorUsedError;
}
