// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  int? get id => throw _privateConstructorUsedError;
  set id(int? value) => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  set code(String? value) => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  set name(String? value) => throw _privateConstructorUsedError;
  String? get displayName => throw _privateConstructorUsedError;
  set displayName(String? value) => throw _privateConstructorUsedError;
  String? get unitType => throw _privateConstructorUsedError;
  set unitType(String? value) => throw _privateConstructorUsedError;
  int? get productId => throw _privateConstructorUsedError;
  set productId(int? value) => throw _privateConstructorUsedError;
  Locale? get locale => throw _privateConstructorUsedError;
  set locale(Locale? value) => throw _privateConstructorUsedError;
  Locales? get locales => throw _privateConstructorUsedError;
  set locales(Locales? value) => throw _privateConstructorUsedError;

  /// Serializes this Product to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {int? id,
      String? code,
      String? name,
      String? displayName,
      String? unitType,
      int? productId,
      Locale? locale,
      Locales? locales});

  $LocaleCopyWith<$Res>? get locale;
  $LocalesCopyWith<$Res>? get locales;
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? name = freezed,
    Object? displayName = freezed,
    Object? unitType = freezed,
    Object? productId = freezed,
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
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      unitType: freezed == unitType
          ? _value.unitType
          : unitType // ignore: cast_nullable_to_non_nullable
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
    ) as $Val);
  }

  /// Create a copy of Product
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

  /// Create a copy of Product
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
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
          _$ProductImpl value, $Res Function(_$ProductImpl) then) =
      __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? code,
      String? name,
      String? displayName,
      String? unitType,
      int? productId,
      Locale? locale,
      Locales? locales});

  @override
  $LocaleCopyWith<$Res>? get locale;
  @override
  $LocalesCopyWith<$Res>? get locales;
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
      _$ProductImpl _value, $Res Function(_$ProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? name = freezed,
    Object? displayName = freezed,
    Object? unitType = freezed,
    Object? productId = freezed,
    Object? locale = freezed,
    Object? locales = freezed,
  }) {
    return _then(_$ProductImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      unitType: freezed == unitType
          ? _value.unitType
          : unitType // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _$ProductImpl implements _Product {
  _$ProductImpl(
      {this.id,
      this.code,
      this.name,
      this.displayName,
      this.unitType,
      this.productId,
      this.locale,
      this.locales});

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

  @override
  int? id;
  @override
  String? code;
  @override
  String? name;
  @override
  String? displayName;
  @override
  String? unitType;
  @override
  int? productId;
  @override
  Locale? locale;
  @override
  Locales? locales;

  @override
  String toString() {
    return 'Product(id: $id, code: $code, name: $name, displayName: $displayName, unitType: $unitType, productId: $productId, locale: $locale, locales: $locales)';
  }

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImplToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  factory _Product(
      {int? id,
      String? code,
      String? name,
      String? displayName,
      String? unitType,
      int? productId,
      Locale? locale,
      Locales? locales}) = _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

  @override
  int? get id;
  set id(int? value);
  @override
  String? get code;
  set code(String? value);
  @override
  String? get name;
  set name(String? value);
  @override
  String? get displayName;
  set displayName(String? value);
  @override
  String? get unitType;
  set unitType(String? value);
  @override
  int? get productId;
  set productId(int? value);
  @override
  Locale? get locale;
  set locale(Locale? value);
  @override
  Locales? get locales;
  set locales(Locales? value);

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
