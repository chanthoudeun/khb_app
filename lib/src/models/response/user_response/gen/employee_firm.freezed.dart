// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../employee_firm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EmployeeFirm _$EmployeeFirmFromJson(Map<String, dynamic> json) {
  return _EmployeeFirm.fromJson(json);
}

/// @nodoc
mixin _$EmployeeFirm {
  @HiveField(0)
  int? get outletId => throw _privateConstructorUsedError;
  @HiveField(0)
  set outletId(int? value) => throw _privateConstructorUsedError;
  @HiveField(1)
  int? get dealerId => throw _privateConstructorUsedError;
  @HiveField(1)
  set dealerId(int? value) => throw _privateConstructorUsedError;
  @HiveField(2)
  int? get employeeId => throw _privateConstructorUsedError;
  @HiveField(2)
  set employeeId(int? value) => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get days => throw _privateConstructorUsedError;
  @HiveField(3)
  set days(String? value) => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get effectedAt => throw _privateConstructorUsedError;
  @HiveField(4)
  set effectedAt(String? value) => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get frequency => throw _privateConstructorUsedError;
  @HiveField(5)
  set frequency(String? value) => throw _privateConstructorUsedError;
  @HiveField(6)
  int? get multiply => throw _privateConstructorUsedError;
  @HiveField(6)
  set multiply(int? value) => throw _privateConstructorUsedError;
  @HiveField(7)
  String? get status => throw _privateConstructorUsedError;
  @HiveField(7)
  set status(String? value) => throw _privateConstructorUsedError;
  @HiveField(8)
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @HiveField(8)
  set updatedAt(DateTime? value) => throw _privateConstructorUsedError;
  @HiveField(9)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @HiveField(9)
  set createdAt(DateTime? value) => throw _privateConstructorUsedError;
  @HiveField(10)
  int? get updatedBy => throw _privateConstructorUsedError;
  @HiveField(10)
  set updatedBy(int? value) => throw _privateConstructorUsedError;
  @HiveField(11)
  int? get createdBy => throw _privateConstructorUsedError;
  @HiveField(11)
  set createdBy(int? value) => throw _privateConstructorUsedError;

  /// Serializes this EmployeeFirm to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EmployeeFirm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EmployeeFirmCopyWith<EmployeeFirm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeFirmCopyWith<$Res> {
  factory $EmployeeFirmCopyWith(
          EmployeeFirm value, $Res Function(EmployeeFirm) then) =
      _$EmployeeFirmCopyWithImpl<$Res, EmployeeFirm>;
  @useResult
  $Res call(
      {@HiveField(0) int? outletId,
      @HiveField(1) int? dealerId,
      @HiveField(2) int? employeeId,
      @HiveField(3) String? days,
      @HiveField(4) String? effectedAt,
      @HiveField(5) String? frequency,
      @HiveField(6) int? multiply,
      @HiveField(7) String? status,
      @HiveField(8) DateTime? updatedAt,
      @HiveField(9) DateTime? createdAt,
      @HiveField(10) int? updatedBy,
      @HiveField(11) int? createdBy});
}

/// @nodoc
class _$EmployeeFirmCopyWithImpl<$Res, $Val extends EmployeeFirm>
    implements $EmployeeFirmCopyWith<$Res> {
  _$EmployeeFirmCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EmployeeFirm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? outletId = freezed,
    Object? dealerId = freezed,
    Object? employeeId = freezed,
    Object? days = freezed,
    Object? effectedAt = freezed,
    Object? frequency = freezed,
    Object? multiply = freezed,
    Object? status = freezed,
    Object? updatedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedBy = freezed,
    Object? createdBy = freezed,
  }) {
    return _then(_value.copyWith(
      outletId: freezed == outletId
          ? _value.outletId
          : outletId // ignore: cast_nullable_to_non_nullable
              as int?,
      dealerId: freezed == dealerId
          ? _value.dealerId
          : dealerId // ignore: cast_nullable_to_non_nullable
              as int?,
      employeeId: freezed == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as int?,
      days: freezed == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as String?,
      effectedAt: freezed == effectedAt
          ? _value.effectedAt
          : effectedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      frequency: freezed == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as String?,
      multiply: freezed == multiply
          ? _value.multiply
          : multiply // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedBy: freezed == updatedBy
          ? _value.updatedBy
          : updatedBy // ignore: cast_nullable_to_non_nullable
              as int?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmployeeFirmImplCopyWith<$Res>
    implements $EmployeeFirmCopyWith<$Res> {
  factory _$$EmployeeFirmImplCopyWith(
          _$EmployeeFirmImpl value, $Res Function(_$EmployeeFirmImpl) then) =
      __$$EmployeeFirmImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int? outletId,
      @HiveField(1) int? dealerId,
      @HiveField(2) int? employeeId,
      @HiveField(3) String? days,
      @HiveField(4) String? effectedAt,
      @HiveField(5) String? frequency,
      @HiveField(6) int? multiply,
      @HiveField(7) String? status,
      @HiveField(8) DateTime? updatedAt,
      @HiveField(9) DateTime? createdAt,
      @HiveField(10) int? updatedBy,
      @HiveField(11) int? createdBy});
}

/// @nodoc
class __$$EmployeeFirmImplCopyWithImpl<$Res>
    extends _$EmployeeFirmCopyWithImpl<$Res, _$EmployeeFirmImpl>
    implements _$$EmployeeFirmImplCopyWith<$Res> {
  __$$EmployeeFirmImplCopyWithImpl(
      _$EmployeeFirmImpl _value, $Res Function(_$EmployeeFirmImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmployeeFirm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? outletId = freezed,
    Object? dealerId = freezed,
    Object? employeeId = freezed,
    Object? days = freezed,
    Object? effectedAt = freezed,
    Object? frequency = freezed,
    Object? multiply = freezed,
    Object? status = freezed,
    Object? updatedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedBy = freezed,
    Object? createdBy = freezed,
  }) {
    return _then(_$EmployeeFirmImpl(
      outletId: freezed == outletId
          ? _value.outletId
          : outletId // ignore: cast_nullable_to_non_nullable
              as int?,
      dealerId: freezed == dealerId
          ? _value.dealerId
          : dealerId // ignore: cast_nullable_to_non_nullable
              as int?,
      employeeId: freezed == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as int?,
      days: freezed == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as String?,
      effectedAt: freezed == effectedAt
          ? _value.effectedAt
          : effectedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      frequency: freezed == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as String?,
      multiply: freezed == multiply
          ? _value.multiply
          : multiply // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedBy: freezed == updatedBy
          ? _value.updatedBy
          : updatedBy // ignore: cast_nullable_to_non_nullable
              as int?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@HiveType(typeId: 8)
@JsonSerializable(fieldRename: FieldRename.none)
class _$EmployeeFirmImpl implements _EmployeeFirm {
  _$EmployeeFirmImpl(
      {@HiveField(0) this.outletId,
      @HiveField(1) this.dealerId,
      @HiveField(2) this.employeeId,
      @HiveField(3) this.days,
      @HiveField(4) this.effectedAt,
      @HiveField(5) this.frequency,
      @HiveField(6) this.multiply,
      @HiveField(7) this.status,
      @HiveField(8) this.updatedAt,
      @HiveField(9) this.createdAt,
      @HiveField(10) this.updatedBy,
      @HiveField(11) this.createdBy});

  factory _$EmployeeFirmImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmployeeFirmImplFromJson(json);

  @override
  @HiveField(0)
  int? outletId;
  @override
  @HiveField(1)
  int? dealerId;
  @override
  @HiveField(2)
  int? employeeId;
  @override
  @HiveField(3)
  String? days;
  @override
  @HiveField(4)
  String? effectedAt;
  @override
  @HiveField(5)
  String? frequency;
  @override
  @HiveField(6)
  int? multiply;
  @override
  @HiveField(7)
  String? status;
  @override
  @HiveField(8)
  DateTime? updatedAt;
  @override
  @HiveField(9)
  DateTime? createdAt;
  @override
  @HiveField(10)
  int? updatedBy;
  @override
  @HiveField(11)
  int? createdBy;

  @override
  String toString() {
    return 'EmployeeFirm(outletId: $outletId, dealerId: $dealerId, employeeId: $employeeId, days: $days, effectedAt: $effectedAt, frequency: $frequency, multiply: $multiply, status: $status, updatedAt: $updatedAt, createdAt: $createdAt, updatedBy: $updatedBy, createdBy: $createdBy)';
  }

  /// Create a copy of EmployeeFirm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmployeeFirmImplCopyWith<_$EmployeeFirmImpl> get copyWith =>
      __$$EmployeeFirmImplCopyWithImpl<_$EmployeeFirmImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmployeeFirmImplToJson(
      this,
    );
  }
}

abstract class _EmployeeFirm implements EmployeeFirm {
  factory _EmployeeFirm(
      {@HiveField(0) int? outletId,
      @HiveField(1) int? dealerId,
      @HiveField(2) int? employeeId,
      @HiveField(3) String? days,
      @HiveField(4) String? effectedAt,
      @HiveField(5) String? frequency,
      @HiveField(6) int? multiply,
      @HiveField(7) String? status,
      @HiveField(8) DateTime? updatedAt,
      @HiveField(9) DateTime? createdAt,
      @HiveField(10) int? updatedBy,
      @HiveField(11) int? createdBy}) = _$EmployeeFirmImpl;

  factory _EmployeeFirm.fromJson(Map<String, dynamic> json) =
      _$EmployeeFirmImpl.fromJson;

  @override
  @HiveField(0)
  int? get outletId;
  @HiveField(0)
  set outletId(int? value);
  @override
  @HiveField(1)
  int? get dealerId;
  @HiveField(1)
  set dealerId(int? value);
  @override
  @HiveField(2)
  int? get employeeId;
  @HiveField(2)
  set employeeId(int? value);
  @override
  @HiveField(3)
  String? get days;
  @HiveField(3)
  set days(String? value);
  @override
  @HiveField(4)
  String? get effectedAt;
  @HiveField(4)
  set effectedAt(String? value);
  @override
  @HiveField(5)
  String? get frequency;
  @HiveField(5)
  set frequency(String? value);
  @override
  @HiveField(6)
  int? get multiply;
  @HiveField(6)
  set multiply(int? value);
  @override
  @HiveField(7)
  String? get status;
  @HiveField(7)
  set status(String? value);
  @override
  @HiveField(8)
  DateTime? get updatedAt;
  @HiveField(8)
  set updatedAt(DateTime? value);
  @override
  @HiveField(9)
  DateTime? get createdAt;
  @HiveField(9)
  set createdAt(DateTime? value);
  @override
  @HiveField(10)
  int? get updatedBy;
  @HiveField(10)
  set updatedBy(int? value);
  @override
  @HiveField(11)
  int? get createdBy;
  @HiveField(11)
  set createdBy(int? value);

  /// Create a copy of EmployeeFirm
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmployeeFirmImplCopyWith<_$EmployeeFirmImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
