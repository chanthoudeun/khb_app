// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../locales.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Locales _$LocalesFromJson(Map<String, dynamic> json) {
  return _Locales.fromJson(json);
}

/// @nodoc
mixin _$Locales {
  int? get id => throw _privateConstructorUsedError;
  set id(int? value) => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  set code(String? value) => throw _privateConstructorUsedError;
  int? get productId => throw _privateConstructorUsedError;
  set productId(int? value) => throw _privateConstructorUsedError;
  Locale? get locale => throw _privateConstructorUsedError;
  set locale(Locale? value) => throw _privateConstructorUsedError;
  Locales? get locales => throw _privateConstructorUsedError;
  set locales(Locales? value) => throw _privateConstructorUsedError;
  En? get en => throw _privateConstructorUsedError;
  set en(En? value) => throw _privateConstructorUsedError;
  Km? get km => throw _privateConstructorUsedError;
  set km(Km? value) => throw _privateConstructorUsedError;

  /// Serializes this Locales to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Locales
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocalesCopyWith<Locales> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalesCopyWith<$Res> {
  factory $LocalesCopyWith(Locales value, $Res Function(Locales) then) =
      _$LocalesCopyWithImpl<$Res, Locales>;
  @useResult
  $Res call(
      {int? id,
      String? code,
      int? productId,
      Locale? locale,
      Locales? locales,
      En? en,
      Km? km});

  $LocaleCopyWith<$Res>? get locale;
  $LocalesCopyWith<$Res>? get locales;
  $EnCopyWith<$Res>? get en;
  $KmCopyWith<$Res>? get km;
}

/// @nodoc
class _$LocalesCopyWithImpl<$Res, $Val extends Locales>
    implements $LocalesCopyWith<$Res> {
  _$LocalesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Locales
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? productId = freezed,
    Object? locale = freezed,
    Object? locales = freezed,
    Object? en = freezed,
    Object? km = freezed,
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
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int?,
      locale: freezed == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale?,
      locales: freezed == locales
          ? _value.locales
          : locales // ignore: cast_nullable_to_non_nullable
              as Locales?,
      en: freezed == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as En?,
      km: freezed == km
          ? _value.km
          : km // ignore: cast_nullable_to_non_nullable
              as Km?,
    ) as $Val);
  }

  /// Create a copy of Locales
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

  /// Create a copy of Locales
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

  /// Create a copy of Locales
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EnCopyWith<$Res>? get en {
    if (_value.en == null) {
      return null;
    }

    return $EnCopyWith<$Res>(_value.en!, (value) {
      return _then(_value.copyWith(en: value) as $Val);
    });
  }

  /// Create a copy of Locales
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $KmCopyWith<$Res>? get km {
    if (_value.km == null) {
      return null;
    }

    return $KmCopyWith<$Res>(_value.km!, (value) {
      return _then(_value.copyWith(km: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LocalesImplCopyWith<$Res> implements $LocalesCopyWith<$Res> {
  factory _$$LocalesImplCopyWith(
          _$LocalesImpl value, $Res Function(_$LocalesImpl) then) =
      __$$LocalesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? code,
      int? productId,
      Locale? locale,
      Locales? locales,
      En? en,
      Km? km});

  @override
  $LocaleCopyWith<$Res>? get locale;
  @override
  $LocalesCopyWith<$Res>? get locales;
  @override
  $EnCopyWith<$Res>? get en;
  @override
  $KmCopyWith<$Res>? get km;
}

/// @nodoc
class __$$LocalesImplCopyWithImpl<$Res>
    extends _$LocalesCopyWithImpl<$Res, _$LocalesImpl>
    implements _$$LocalesImplCopyWith<$Res> {
  __$$LocalesImplCopyWithImpl(
      _$LocalesImpl _value, $Res Function(_$LocalesImpl) _then)
      : super(_value, _then);

  /// Create a copy of Locales
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? productId = freezed,
    Object? locale = freezed,
    Object? locales = freezed,
    Object? en = freezed,
    Object? km = freezed,
  }) {
    return _then(_$LocalesImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int?,
      locale: freezed == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale?,
      locales: freezed == locales
          ? _value.locales
          : locales // ignore: cast_nullable_to_non_nullable
              as Locales?,
      en: freezed == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as En?,
      km: freezed == km
          ? _value.km
          : km // ignore: cast_nullable_to_non_nullable
              as Km?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _$LocalesImpl implements _Locales {
  _$LocalesImpl(
      {this.id,
      this.code,
      this.productId,
      this.locale,
      this.locales,
      this.en,
      this.km});

  factory _$LocalesImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocalesImplFromJson(json);

  @override
  int? id;
  @override
  String? code;
  @override
  int? productId;
  @override
  Locale? locale;
  @override
  Locales? locales;
  @override
  En? en;
  @override
  Km? km;

  @override
  String toString() {
    return 'Locales(id: $id, code: $code, productId: $productId, locale: $locale, locales: $locales, en: $en, km: $km)';
  }

  /// Create a copy of Locales
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalesImplCopyWith<_$LocalesImpl> get copyWith =>
      __$$LocalesImplCopyWithImpl<_$LocalesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocalesImplToJson(
      this,
    );
  }
}

abstract class _Locales implements Locales {
  factory _Locales(
      {int? id,
      String? code,
      int? productId,
      Locale? locale,
      Locales? locales,
      En? en,
      Km? km}) = _$LocalesImpl;

  factory _Locales.fromJson(Map<String, dynamic> json) = _$LocalesImpl.fromJson;

  @override
  int? get id;
  set id(int? value);
  @override
  String? get code;
  set code(String? value);
  @override
  int? get productId;
  set productId(int? value);
  @override
  Locale? get locale;
  set locale(Locale? value);
  @override
  Locales? get locales;
  set locales(Locales? value);
  @override
  En? get en;
  set en(En? value);
  @override
  Km? get km;
  set km(Km? value);

  /// Create a copy of Locales
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocalesImplCopyWith<_$LocalesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
