// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../geo_city.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GeoCity _$GeoCityFromJson(Map<String, dynamic> json) {
  return _GeoCity.fromJson(json);
}

/// @nodoc
mixin _$GeoCity {
  int? get id => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  int? get geoCityId => throw _privateConstructorUsedError;
  Locale? get locale => throw _privateConstructorUsedError;
  Locales? get locales => throw _privateConstructorUsedError;

  /// Serializes this GeoCity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GeoCity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GeoCityCopyWith<GeoCity> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeoCityCopyWith<$Res> {
  factory $GeoCityCopyWith(GeoCity value, $Res Function(GeoCity) then) =
      _$GeoCityCopyWithImpl<$Res, GeoCity>;
  @useResult
  $Res call(
      {int? id,
      String? code,
      int? geoCityId,
      Locale? locale,
      Locales? locales});

  $LocaleCopyWith<$Res>? get locale;
  $LocalesCopyWith<$Res>? get locales;
}

/// @nodoc
class _$GeoCityCopyWithImpl<$Res, $Val extends GeoCity>
    implements $GeoCityCopyWith<$Res> {
  _$GeoCityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GeoCity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? geoCityId = freezed,
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
      geoCityId: freezed == geoCityId
          ? _value.geoCityId
          : geoCityId // ignore: cast_nullable_to_non_nullable
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

  /// Create a copy of GeoCity
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

  /// Create a copy of GeoCity
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
abstract class _$$GeoCityImplCopyWith<$Res> implements $GeoCityCopyWith<$Res> {
  factory _$$GeoCityImplCopyWith(
          _$GeoCityImpl value, $Res Function(_$GeoCityImpl) then) =
      __$$GeoCityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? code,
      int? geoCityId,
      Locale? locale,
      Locales? locales});

  @override
  $LocaleCopyWith<$Res>? get locale;
  @override
  $LocalesCopyWith<$Res>? get locales;
}

/// @nodoc
class __$$GeoCityImplCopyWithImpl<$Res>
    extends _$GeoCityCopyWithImpl<$Res, _$GeoCityImpl>
    implements _$$GeoCityImplCopyWith<$Res> {
  __$$GeoCityImplCopyWithImpl(
      _$GeoCityImpl _value, $Res Function(_$GeoCityImpl) _then)
      : super(_value, _then);

  /// Create a copy of GeoCity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? geoCityId = freezed,
    Object? locale = freezed,
    Object? locales = freezed,
  }) {
    return _then(_$GeoCityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      geoCityId: freezed == geoCityId
          ? _value.geoCityId
          : geoCityId // ignore: cast_nullable_to_non_nullable
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
class _$GeoCityImpl implements _GeoCity {
  _$GeoCityImpl(
      {this.id, this.code, this.geoCityId, this.locale, this.locales});

  factory _$GeoCityImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeoCityImplFromJson(json);

  @override
  final int? id;
  @override
  final String? code;
  @override
  final int? geoCityId;
  @override
  final Locale? locale;
  @override
  final Locales? locales;

  @override
  String toString() {
    return 'GeoCity(id: $id, code: $code, geoCityId: $geoCityId, locale: $locale, locales: $locales)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeoCityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.geoCityId, geoCityId) ||
                other.geoCityId == geoCityId) &&
            (identical(other.locale, locale) || other.locale == locale) &&
            (identical(other.locales, locales) || other.locales == locales));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, code, geoCityId, locale, locales);

  /// Create a copy of GeoCity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GeoCityImplCopyWith<_$GeoCityImpl> get copyWith =>
      __$$GeoCityImplCopyWithImpl<_$GeoCityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeoCityImplToJson(
      this,
    );
  }
}

abstract class _GeoCity implements GeoCity {
  factory _GeoCity(
      {final int? id,
      final String? code,
      final int? geoCityId,
      final Locale? locale,
      final Locales? locales}) = _$GeoCityImpl;

  factory _GeoCity.fromJson(Map<String, dynamic> json) = _$GeoCityImpl.fromJson;

  @override
  int? get id;
  @override
  String? get code;
  @override
  int? get geoCityId;
  @override
  Locale? get locale;
  @override
  Locales? get locales;

  /// Create a copy of GeoCity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GeoCityImplCopyWith<_$GeoCityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
