// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../locale.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Locale _$LocaleFromJson(Map<String, dynamic> json) {
  return _Locale.fromJson(json);
}

/// @nodoc
mixin _$Locale {
  Km? get km => throw _privateConstructorUsedError;
  set km(Km? value) => throw _privateConstructorUsedError;
  En? get en => throw _privateConstructorUsedError;
  set en(En? value) => throw _privateConstructorUsedError;

  /// Serializes this Locale to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Locale
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocaleCopyWith<Locale> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocaleCopyWith<$Res> {
  factory $LocaleCopyWith(Locale value, $Res Function(Locale) then) =
      _$LocaleCopyWithImpl<$Res, Locale>;
  @useResult
  $Res call({Km? km, En? en});

  $KmCopyWith<$Res>? get km;
  $EnCopyWith<$Res>? get en;
}

/// @nodoc
class _$LocaleCopyWithImpl<$Res, $Val extends Locale>
    implements $LocaleCopyWith<$Res> {
  _$LocaleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Locale
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? km = freezed,
    Object? en = freezed,
  }) {
    return _then(_value.copyWith(
      km: freezed == km
          ? _value.km
          : km // ignore: cast_nullable_to_non_nullable
              as Km?,
      en: freezed == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as En?,
    ) as $Val);
  }

  /// Create a copy of Locale
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

  /// Create a copy of Locale
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
}

/// @nodoc
abstract class _$$LocaleImplCopyWith<$Res> implements $LocaleCopyWith<$Res> {
  factory _$$LocaleImplCopyWith(
          _$LocaleImpl value, $Res Function(_$LocaleImpl) then) =
      __$$LocaleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Km? km, En? en});

  @override
  $KmCopyWith<$Res>? get km;
  @override
  $EnCopyWith<$Res>? get en;
}

/// @nodoc
class __$$LocaleImplCopyWithImpl<$Res>
    extends _$LocaleCopyWithImpl<$Res, _$LocaleImpl>
    implements _$$LocaleImplCopyWith<$Res> {
  __$$LocaleImplCopyWithImpl(
      _$LocaleImpl _value, $Res Function(_$LocaleImpl) _then)
      : super(_value, _then);

  /// Create a copy of Locale
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? km = freezed,
    Object? en = freezed,
  }) {
    return _then(_$LocaleImpl(
      km: freezed == km
          ? _value.km
          : km // ignore: cast_nullable_to_non_nullable
              as Km?,
      en: freezed == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as En?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _$LocaleImpl implements _Locale {
  _$LocaleImpl({this.km, this.en});

  factory _$LocaleImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocaleImplFromJson(json);

  @override
  Km? km;
  @override
  En? en;

  @override
  String toString() {
    return 'Locale(km: $km, en: $en)';
  }

  /// Create a copy of Locale
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocaleImplCopyWith<_$LocaleImpl> get copyWith =>
      __$$LocaleImplCopyWithImpl<_$LocaleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocaleImplToJson(
      this,
    );
  }
}

abstract class _Locale implements Locale {
  factory _Locale({Km? km, En? en}) = _$LocaleImpl;

  factory _Locale.fromJson(Map<String, dynamic> json) = _$LocaleImpl.fromJson;

  @override
  Km? get km;
  set km(Km? value);
  @override
  En? get en;
  set en(En? value);

  /// Create a copy of Locale
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocaleImplCopyWith<_$LocaleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
