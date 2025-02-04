// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../dealer_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DealerDetail _$DealerDetailFromJson(Map<String, dynamic> json) {
  return _DealerDetail.fromJson(json);
}

/// @nodoc
mixin _$DealerDetail {
  @HiveField(0)
  int? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get code => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get phone => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get email => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this DealerDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DealerDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DealerDetailCopyWith<DealerDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DealerDetailCopyWith<$Res> {
  factory $DealerDetailCopyWith(
          DealerDetail value, $Res Function(DealerDetail) then) =
      _$DealerDetailCopyWithImpl<$Res, DealerDetail>;
  @useResult
  $Res call(
      {@HiveField(0) int? id,
      @HiveField(1) String? code,
      @HiveField(2) String? phone,
      @HiveField(3) String? email,
      @HiveField(4) String? name});
}

/// @nodoc
class _$DealerDetailCopyWithImpl<$Res, $Val extends DealerDetail>
    implements $DealerDetailCopyWith<$Res> {
  _$DealerDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DealerDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? phone = freezed,
    Object? email = freezed,
    Object? name = freezed,
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
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DealerDetailImplCopyWith<$Res>
    implements $DealerDetailCopyWith<$Res> {
  factory _$$DealerDetailImplCopyWith(
          _$DealerDetailImpl value, $Res Function(_$DealerDetailImpl) then) =
      __$$DealerDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int? id,
      @HiveField(1) String? code,
      @HiveField(2) String? phone,
      @HiveField(3) String? email,
      @HiveField(4) String? name});
}

/// @nodoc
class __$$DealerDetailImplCopyWithImpl<$Res>
    extends _$DealerDetailCopyWithImpl<$Res, _$DealerDetailImpl>
    implements _$$DealerDetailImplCopyWith<$Res> {
  __$$DealerDetailImplCopyWithImpl(
      _$DealerDetailImpl _value, $Res Function(_$DealerDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of DealerDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? phone = freezed,
    Object? email = freezed,
    Object? name = freezed,
  }) {
    return _then(_$DealerDetailImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@HiveType(typeId: 9)
@JsonSerializable(fieldRename: FieldRename.none)
class _$DealerDetailImpl implements _DealerDetail {
  _$DealerDetailImpl(
      {@HiveField(0) this.id,
      @HiveField(1) this.code,
      @HiveField(2) this.phone,
      @HiveField(3) this.email,
      @HiveField(4) this.name});

  factory _$DealerDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$DealerDetailImplFromJson(json);

  @override
  @HiveField(0)
  final int? id;
  @override
  @HiveField(1)
  final String? code;
  @override
  @HiveField(2)
  final String? phone;
  @override
  @HiveField(3)
  final String? email;
  @override
  @HiveField(4)
  final String? name;

  @override
  String toString() {
    return 'DealerDetail(id: $id, code: $code, phone: $phone, email: $email, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DealerDetailImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, code, phone, email, name);

  /// Create a copy of DealerDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DealerDetailImplCopyWith<_$DealerDetailImpl> get copyWith =>
      __$$DealerDetailImplCopyWithImpl<_$DealerDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DealerDetailImplToJson(
      this,
    );
  }
}

abstract class _DealerDetail implements DealerDetail {
  factory _DealerDetail(
      {@HiveField(0) final int? id,
      @HiveField(1) final String? code,
      @HiveField(2) final String? phone,
      @HiveField(3) final String? email,
      @HiveField(4) final String? name}) = _$DealerDetailImpl;

  factory _DealerDetail.fromJson(Map<String, dynamic> json) =
      _$DealerDetailImpl.fromJson;

  @override
  @HiveField(0)
  int? get id;
  @override
  @HiveField(1)
  String? get code;
  @override
  @HiveField(2)
  String? get phone;
  @override
  @HiveField(3)
  String? get email;
  @override
  @HiveField(4)
  String? get name;

  /// Create a copy of DealerDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DealerDetailImplCopyWith<_$DealerDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
