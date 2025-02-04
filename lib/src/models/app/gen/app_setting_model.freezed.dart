// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../app_setting_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppSettingModel _$AppSettingModelFromJson(Map<String, dynamic> json) {
  return _AppSettingModel.fromJson(json);
}

/// @nodoc
mixin _$AppSettingModel {
  @HiveField(0)
  String? get languageCode => throw _privateConstructorUsedError;
  @HiveField(0)
  set languageCode(String? value) => throw _privateConstructorUsedError;

  /// Serializes this AppSettingModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppSettingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppSettingModelCopyWith<AppSettingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppSettingModelCopyWith<$Res> {
  factory $AppSettingModelCopyWith(
          AppSettingModel value, $Res Function(AppSettingModel) then) =
      _$AppSettingModelCopyWithImpl<$Res, AppSettingModel>;
  @useResult
  $Res call({@HiveField(0) String? languageCode});
}

/// @nodoc
class _$AppSettingModelCopyWithImpl<$Res, $Val extends AppSettingModel>
    implements $AppSettingModelCopyWith<$Res> {
  _$AppSettingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppSettingModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languageCode = freezed,
  }) {
    return _then(_value.copyWith(
      languageCode: freezed == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppSettingModelImplCopyWith<$Res>
    implements $AppSettingModelCopyWith<$Res> {
  factory _$$AppSettingModelImplCopyWith(_$AppSettingModelImpl value,
          $Res Function(_$AppSettingModelImpl) then) =
      __$$AppSettingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(0) String? languageCode});
}

/// @nodoc
class __$$AppSettingModelImplCopyWithImpl<$Res>
    extends _$AppSettingModelCopyWithImpl<$Res, _$AppSettingModelImpl>
    implements _$$AppSettingModelImplCopyWith<$Res> {
  __$$AppSettingModelImplCopyWithImpl(
      _$AppSettingModelImpl _value, $Res Function(_$AppSettingModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppSettingModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languageCode = freezed,
  }) {
    return _then(_$AppSettingModelImpl(
      languageCode: freezed == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
@HiveType(typeId: 0)
class _$AppSettingModelImpl extends _AppSettingModel {
  _$AppSettingModelImpl({@HiveField(0) this.languageCode}) : super._();

  factory _$AppSettingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppSettingModelImplFromJson(json);

  @override
  @HiveField(0)
  String? languageCode;

  @override
  String toString() {
    return 'AppSettingModel(languageCode: $languageCode)';
  }

  /// Create a copy of AppSettingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppSettingModelImplCopyWith<_$AppSettingModelImpl> get copyWith =>
      __$$AppSettingModelImplCopyWithImpl<_$AppSettingModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppSettingModelImplToJson(
      this,
    );
  }
}

abstract class _AppSettingModel extends AppSettingModel {
  factory _AppSettingModel({@HiveField(0) String? languageCode}) =
      _$AppSettingModelImpl;
  _AppSettingModel._() : super._();

  factory _AppSettingModel.fromJson(Map<String, dynamic> json) =
      _$AppSettingModelImpl.fromJson;

  @override
  @HiveField(0)
  String? get languageCode;
  @HiveField(0)
  set languageCode(String? value);

  /// Create a copy of AppSettingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppSettingModelImplCopyWith<_$AppSettingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
