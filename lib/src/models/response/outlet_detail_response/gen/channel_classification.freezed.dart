// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../channel_classification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChannelClassification _$ChannelClassificationFromJson(
    Map<String, dynamic> json) {
  return _ChannelClassification.fromJson(json);
}

/// @nodoc
mixin _$ChannelClassification {
  int? get id => throw _privateConstructorUsedError;
  set id(int? value) => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  set code(String? value) => throw _privateConstructorUsedError;
  int? get classificationId => throw _privateConstructorUsedError;
  set classificationId(int? value) => throw _privateConstructorUsedError;
  Locale? get locale => throw _privateConstructorUsedError;
  set locale(Locale? value) => throw _privateConstructorUsedError;
  Locales? get locales => throw _privateConstructorUsedError;
  set locales(Locales? value) => throw _privateConstructorUsedError;

  /// Serializes this ChannelClassification to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChannelClassification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChannelClassificationCopyWith<ChannelClassification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelClassificationCopyWith<$Res> {
  factory $ChannelClassificationCopyWith(ChannelClassification value,
          $Res Function(ChannelClassification) then) =
      _$ChannelClassificationCopyWithImpl<$Res, ChannelClassification>;
  @useResult
  $Res call(
      {int? id,
      String? code,
      int? classificationId,
      Locale? locale,
      Locales? locales});

  $LocaleCopyWith<$Res>? get locale;
  $LocalesCopyWith<$Res>? get locales;
}

/// @nodoc
class _$ChannelClassificationCopyWithImpl<$Res,
        $Val extends ChannelClassification>
    implements $ChannelClassificationCopyWith<$Res> {
  _$ChannelClassificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChannelClassification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? classificationId = freezed,
    Object? locale = freezed,
    Object? locales = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      classificationId: freezed == classificationId
          ? _value.classificationId
          : classificationId // ignore: cast_nullable_to_non_nullable
              as int?,
      locale: freezed == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale?,
      locales: freezed == locales
          ? _value.locales
          : locales // ignore: cast_nullable_to_non_nullable
              as Locales?,
    ) as $Val);
  }

  /// Create a copy of ChannelClassification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocaleCopyWith<$Res>? get locale {
    if (_value.locale == null) {
      return null;
    }

    return $LocaleCopyWith<$Res>(_value.locale!, (value) {
      return _then(_value.copyWith(locale: value) as $Val);
    });
  }

  /// Create a copy of ChannelClassification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocalesCopyWith<$Res>? get locales {
    if (_value.locales == null) {
      return null;
    }

    return $LocalesCopyWith<$Res>(_value.locales!, (value) {
      return _then(_value.copyWith(locales: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChannelClassificationImplCopyWith<$Res>
    implements $ChannelClassificationCopyWith<$Res> {
  factory _$$ChannelClassificationImplCopyWith(
          _$ChannelClassificationImpl value,
          $Res Function(_$ChannelClassificationImpl) then) =
      __$$ChannelClassificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? code,
      int? classificationId,
      Locale? locale,
      Locales? locales});

  @override
  $LocaleCopyWith<$Res>? get locale;
  @override
  $LocalesCopyWith<$Res>? get locales;
}

/// @nodoc
class __$$ChannelClassificationImplCopyWithImpl<$Res>
    extends _$ChannelClassificationCopyWithImpl<$Res,
        _$ChannelClassificationImpl>
    implements _$$ChannelClassificationImplCopyWith<$Res> {
  __$$ChannelClassificationImplCopyWithImpl(_$ChannelClassificationImpl _value,
      $Res Function(_$ChannelClassificationImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChannelClassification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? classificationId = freezed,
    Object? locale = freezed,
    Object? locales = freezed,
  }) {
    return _then(_$ChannelClassificationImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      classificationId: freezed == classificationId
          ? _value.classificationId
          : classificationId // ignore: cast_nullable_to_non_nullable
              as int?,
      locale: freezed == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale?,
      locales: freezed == locales
          ? _value.locales
          : locales // ignore: cast_nullable_to_non_nullable
              as Locales?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _$ChannelClassificationImpl implements _ChannelClassification {
  _$ChannelClassificationImpl(
      {this.id, this.code, this.classificationId, this.locale, this.locales});

  factory _$ChannelClassificationImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChannelClassificationImplFromJson(json);

  @override
  int? id;
  @override
  String? code;
  @override
  int? classificationId;
  @override
  Locale? locale;
  @override
  Locales? locales;

  @override
  String toString() {
    return 'ChannelClassification(id: $id, code: $code, classificationId: $classificationId, locale: $locale, locales: $locales)';
  }

  /// Create a copy of ChannelClassification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChannelClassificationImplCopyWith<_$ChannelClassificationImpl>
      get copyWith => __$$ChannelClassificationImplCopyWithImpl<
          _$ChannelClassificationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChannelClassificationImplToJson(
      this,
    );
  }
}

abstract class _ChannelClassification implements ChannelClassification {
  factory _ChannelClassification(
      {int? id,
      String? code,
      int? classificationId,
      Locale? locale,
      Locales? locales}) = _$ChannelClassificationImpl;

  factory _ChannelClassification.fromJson(Map<String, dynamic> json) =
      _$ChannelClassificationImpl.fromJson;

  @override
  int? get id;
  set id(int? value);
  @override
  String? get code;
  set code(String? value);
  @override
  int? get classificationId;
  set classificationId(int? value);
  @override
  Locale? get locale;
  set locale(Locale? value);
  @override
  Locales? get locales;
  set locales(Locales? value);

  /// Create a copy of ChannelClassification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChannelClassificationImplCopyWith<_$ChannelClassificationImpl>
      get copyWith => throw _privateConstructorUsedError;
}
