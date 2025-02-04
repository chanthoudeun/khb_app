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
  int? get firmOwnerId => throw _privateConstructorUsedError;
  set firmOwnerId(int? value) => throw _privateConstructorUsedError;
  Locale? get locale => throw _privateConstructorUsedError;
  set locale(Locale? value) => throw _privateConstructorUsedError;

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
  $Res call({int? firmOwnerId, Locale? locale});

  $LocaleCopyWith<$Res>? get locale;
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
    Object? firmOwnerId = freezed,
    Object? locale = freezed,
  }) {
    return _then(_value.copyWith(
      firmOwnerId: freezed == firmOwnerId
          ? _value.firmOwnerId
          : firmOwnerId // ignore: cast_nullable_to_non_nullable
              as int?,
      locale: freezed == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale?,
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
}

/// @nodoc
abstract class _$$LocalesImplCopyWith<$Res> implements $LocalesCopyWith<$Res> {
  factory _$$LocalesImplCopyWith(
          _$LocalesImpl value, $Res Function(_$LocalesImpl) then) =
      __$$LocalesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? firmOwnerId, Locale? locale});

  @override
  $LocaleCopyWith<$Res>? get locale;
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
    Object? firmOwnerId = freezed,
    Object? locale = freezed,
  }) {
    return _then(_$LocalesImpl(
      firmOwnerId: freezed == firmOwnerId
          ? _value.firmOwnerId
          : firmOwnerId // ignore: cast_nullable_to_non_nullable
              as int?,
      locale: freezed == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _$LocalesImpl implements _Locales {
  _$LocalesImpl({this.firmOwnerId, this.locale});

  factory _$LocalesImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocalesImplFromJson(json);

  @override
  int? firmOwnerId;
  @override
  Locale? locale;

  @override
  String toString() {
    return 'Locales(firmOwnerId: $firmOwnerId, locale: $locale)';
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
  factory _Locales({int? firmOwnerId, Locale? locale}) = _$LocalesImpl;

  factory _Locales.fromJson(Map<String, dynamic> json) = _$LocalesImpl.fromJson;

  @override
  int? get firmOwnerId;
  set firmOwnerId(int? value);
  @override
  Locale? get locale;
  set locale(Locale? value);

  /// Create a copy of Locales
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocalesImplCopyWith<_$LocalesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
