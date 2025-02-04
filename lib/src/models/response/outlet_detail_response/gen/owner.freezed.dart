// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../owner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Owner _$OwnerFromJson(Map<String, dynamic> json) {
  return _Owner.fromJson(json);
}

/// @nodoc
mixin _$Owner {
  int? get id => throw _privateConstructorUsedError;
  set id(int? value) => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  set code(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'IDCard')
  dynamic get idCard => throw _privateConstructorUsedError;
  @JsonKey(name: 'IDCard')
  set idCard(dynamic value) => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  set gender(String? value) => throw _privateConstructorUsedError;
  dynamic get email => throw _privateConstructorUsedError;
  set email(dynamic value) => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  set phone(String? value) => throw _privateConstructorUsedError;
  String? get otherPhone => throw _privateConstructorUsedError;
  set otherPhone(String? value) => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  set name(String? value) => throw _privateConstructorUsedError;
  Locales? get locales => throw _privateConstructorUsedError;
  set locales(Locales? value) => throw _privateConstructorUsedError;

  /// Serializes this Owner to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Owner
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OwnerCopyWith<Owner> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OwnerCopyWith<$Res> {
  factory $OwnerCopyWith(Owner value, $Res Function(Owner) then) =
      _$OwnerCopyWithImpl<$Res, Owner>;
  @useResult
  $Res call(
      {int? id,
      String? code,
      @JsonKey(name: 'IDCard') dynamic idCard,
      String? gender,
      dynamic email,
      String? phone,
      String? otherPhone,
      String? name,
      Locales? locales});

  $LocalesCopyWith<$Res>? get locales;
}

/// @nodoc
class _$OwnerCopyWithImpl<$Res, $Val extends Owner>
    implements $OwnerCopyWith<$Res> {
  _$OwnerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Owner
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? idCard = freezed,
    Object? gender = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? otherPhone = freezed,
    Object? name = freezed,
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
      idCard: freezed == idCard
          ? _value.idCard
          : idCard // ignore: cast_nullable_to_non_nullable
              as dynamic,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as dynamic,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      otherPhone: freezed == otherPhone
          ? _value.otherPhone
          : otherPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      locales: freezed == locales
          ? _value.locales
          : locales // ignore: cast_nullable_to_non_nullable
              as Locales?,
    ) as $Val);
  }

  /// Create a copy of Owner
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
abstract class _$$OwnerImplCopyWith<$Res> implements $OwnerCopyWith<$Res> {
  factory _$$OwnerImplCopyWith(
          _$OwnerImpl value, $Res Function(_$OwnerImpl) then) =
      __$$OwnerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? code,
      @JsonKey(name: 'IDCard') dynamic idCard,
      String? gender,
      dynamic email,
      String? phone,
      String? otherPhone,
      String? name,
      Locales? locales});

  @override
  $LocalesCopyWith<$Res>? get locales;
}

/// @nodoc
class __$$OwnerImplCopyWithImpl<$Res>
    extends _$OwnerCopyWithImpl<$Res, _$OwnerImpl>
    implements _$$OwnerImplCopyWith<$Res> {
  __$$OwnerImplCopyWithImpl(
      _$OwnerImpl _value, $Res Function(_$OwnerImpl) _then)
      : super(_value, _then);

  /// Create a copy of Owner
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? idCard = freezed,
    Object? gender = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? otherPhone = freezed,
    Object? name = freezed,
    Object? locales = freezed,
  }) {
    return _then(_$OwnerImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      idCard: freezed == idCard
          ? _value.idCard
          : idCard // ignore: cast_nullable_to_non_nullable
              as dynamic,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as dynamic,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      otherPhone: freezed == otherPhone
          ? _value.otherPhone
          : otherPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      locales: freezed == locales
          ? _value.locales
          : locales // ignore: cast_nullable_to_non_nullable
              as Locales?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _$OwnerImpl implements _Owner {
  _$OwnerImpl(
      {this.id,
      this.code,
      @JsonKey(name: 'IDCard') this.idCard,
      this.gender,
      this.email,
      this.phone,
      this.otherPhone,
      this.name,
      this.locales});

  factory _$OwnerImpl.fromJson(Map<String, dynamic> json) =>
      _$$OwnerImplFromJson(json);

  @override
  int? id;
  @override
  String? code;
  @override
  @JsonKey(name: 'IDCard')
  dynamic idCard;
  @override
  String? gender;
  @override
  dynamic email;
  @override
  String? phone;
  @override
  String? otherPhone;
  @override
  String? name;
  @override
  Locales? locales;

  @override
  String toString() {
    return 'Owner(id: $id, code: $code, idCard: $idCard, gender: $gender, email: $email, phone: $phone, otherPhone: $otherPhone, name: $name, locales: $locales)';
  }

  /// Create a copy of Owner
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OwnerImplCopyWith<_$OwnerImpl> get copyWith =>
      __$$OwnerImplCopyWithImpl<_$OwnerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OwnerImplToJson(
      this,
    );
  }
}

abstract class _Owner implements Owner {
  factory _Owner(
      {int? id,
      String? code,
      @JsonKey(name: 'IDCard') dynamic idCard,
      String? gender,
      dynamic email,
      String? phone,
      String? otherPhone,
      String? name,
      Locales? locales}) = _$OwnerImpl;

  factory _Owner.fromJson(Map<String, dynamic> json) = _$OwnerImpl.fromJson;

  @override
  int? get id;
  set id(int? value);
  @override
  String? get code;
  set code(String? value);
  @override
  @JsonKey(name: 'IDCard')
  dynamic get idCard;
  @JsonKey(name: 'IDCard')
  set idCard(dynamic value);
  @override
  String? get gender;
  set gender(String? value);
  @override
  dynamic get email;
  set email(dynamic value);
  @override
  String? get phone;
  set phone(String? value);
  @override
  String? get otherPhone;
  set otherPhone(String? value);
  @override
  String? get name;
  set name(String? value);
  @override
  Locales? get locales;
  set locales(Locales? value);

  /// Create a copy of Owner
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OwnerImplCopyWith<_$OwnerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
