// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../geo_district.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GeoDistrict _$GeoDistrictFromJson(Map<String, dynamic> json) {
  return _GeoDistrict.fromJson(json);
}

/// @nodoc
mixin _$GeoDistrict {
  int? get id => throw _privateConstructorUsedError;
  set id(int? value) => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  set code(String? value) => throw _privateConstructorUsedError;
  int? get geoDistrictId => throw _privateConstructorUsedError;
  set geoDistrictId(int? value) => throw _privateConstructorUsedError;
  Locale? get locale => throw _privateConstructorUsedError;
  set locale(Locale? value) => throw _privateConstructorUsedError;
  Locales? get locales => throw _privateConstructorUsedError;
  set locales(Locales? value) => throw _privateConstructorUsedError;

  /// Serializes this GeoDistrict to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GeoDistrict
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GeoDistrictCopyWith<GeoDistrict> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeoDistrictCopyWith<$Res> {
  factory $GeoDistrictCopyWith(
          GeoDistrict value, $Res Function(GeoDistrict) then) =
      _$GeoDistrictCopyWithImpl<$Res, GeoDistrict>;
  @useResult
  $Res call(
      {int? id,
      String? code,
      int? geoDistrictId,
      Locale? locale,
      Locales? locales});

  $LocaleCopyWith<$Res>? get locale;
  $LocalesCopyWith<$Res>? get locales;
}

/// @nodoc
class _$GeoDistrictCopyWithImpl<$Res, $Val extends GeoDistrict>
    implements $GeoDistrictCopyWith<$Res> {
  _$GeoDistrictCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GeoDistrict
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? geoDistrictId = freezed,
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
      geoDistrictId: freezed == geoDistrictId
          ? _value.geoDistrictId
          : geoDistrictId // ignore: cast_nullable_to_non_nullable
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

  /// Create a copy of GeoDistrict
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

  /// Create a copy of GeoDistrict
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
abstract class _$$GeoDistrictImplCopyWith<$Res>
    implements $GeoDistrictCopyWith<$Res> {
  factory _$$GeoDistrictImplCopyWith(
          _$GeoDistrictImpl value, $Res Function(_$GeoDistrictImpl) then) =
      __$$GeoDistrictImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? code,
      int? geoDistrictId,
      Locale? locale,
      Locales? locales});

  @override
  $LocaleCopyWith<$Res>? get locale;
  @override
  $LocalesCopyWith<$Res>? get locales;
}

/// @nodoc
class __$$GeoDistrictImplCopyWithImpl<$Res>
    extends _$GeoDistrictCopyWithImpl<$Res, _$GeoDistrictImpl>
    implements _$$GeoDistrictImplCopyWith<$Res> {
  __$$GeoDistrictImplCopyWithImpl(
      _$GeoDistrictImpl _value, $Res Function(_$GeoDistrictImpl) _then)
      : super(_value, _then);

  /// Create a copy of GeoDistrict
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? geoDistrictId = freezed,
    Object? locale = freezed,
    Object? locales = freezed,
  }) {
    return _then(_$GeoDistrictImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      geoDistrictId: freezed == geoDistrictId
          ? _value.geoDistrictId
          : geoDistrictId // ignore: cast_nullable_to_non_nullable
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
class _$GeoDistrictImpl implements _GeoDistrict {
  _$GeoDistrictImpl(
      {this.id, this.code, this.geoDistrictId, this.locale, this.locales});

  factory _$GeoDistrictImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeoDistrictImplFromJson(json);

  @override
  int? id;
  @override
  String? code;
  @override
  int? geoDistrictId;
  @override
  Locale? locale;
  @override
  Locales? locales;

  @override
  String toString() {
    return 'GeoDistrict(id: $id, code: $code, geoDistrictId: $geoDistrictId, locale: $locale, locales: $locales)';
  }

  /// Create a copy of GeoDistrict
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GeoDistrictImplCopyWith<_$GeoDistrictImpl> get copyWith =>
      __$$GeoDistrictImplCopyWithImpl<_$GeoDistrictImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeoDistrictImplToJson(
      this,
    );
  }
}

abstract class _GeoDistrict implements GeoDistrict {
  factory _GeoDistrict(
      {int? id,
      String? code,
      int? geoDistrictId,
      Locale? locale,
      Locales? locales}) = _$GeoDistrictImpl;

  factory _GeoDistrict.fromJson(Map<String, dynamic> json) =
      _$GeoDistrictImpl.fromJson;

  @override
  int? get id;
  set id(int? value);
  @override
  String? get code;
  set code(String? value);
  @override
  int? get geoDistrictId;
  set geoDistrictId(int? value);
  @override
  Locale? get locale;
  set locale(Locale? value);
  @override
  Locales? get locales;
  set locales(Locales? value);

  /// Create a copy of GeoDistrict
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GeoDistrictImplCopyWith<_$GeoDistrictImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
