// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../en.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

En _$EnFromJson(Map<String, dynamic> json) {
  return _En.fromJson(json);
}

/// @nodoc
mixin _$En {
  @HiveField(0)
  String? get name => throw _privateConstructorUsedError;
  @HiveField(0)
  set name(String? value) => throw _privateConstructorUsedError;

  /// Serializes this En to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of En
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EnCopyWith<En> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnCopyWith<$Res> {
  factory $EnCopyWith(En value, $Res Function(En) then) =
      _$EnCopyWithImpl<$Res, En>;
  @useResult
  $Res call({@HiveField(0) String? name});
}

/// @nodoc
class _$EnCopyWithImpl<$Res, $Val extends En> implements $EnCopyWith<$Res> {
  _$EnCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of En
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EnImplCopyWith<$Res> implements $EnCopyWith<$Res> {
  factory _$$EnImplCopyWith(_$EnImpl value, $Res Function(_$EnImpl) then) =
      __$$EnImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(0) String? name});
}

/// @nodoc
class __$$EnImplCopyWithImpl<$Res> extends _$EnCopyWithImpl<$Res, _$EnImpl>
    implements _$$EnImplCopyWith<$Res> {
  __$$EnImplCopyWithImpl(_$EnImpl _value, $Res Function(_$EnImpl) _then)
      : super(_value, _then);

  /// Create a copy of En
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$EnImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@HiveType(typeId: 4)
@JsonSerializable(fieldRename: FieldRename.none)
class _$EnImpl implements _En {
  _$EnImpl({@HiveField(0) this.name});

  factory _$EnImpl.fromJson(Map<String, dynamic> json) =>
      _$$EnImplFromJson(json);

  @override
  @HiveField(0)
  String? name;

  @override
  String toString() {
    return 'En(name: $name)';
  }

  /// Create a copy of En
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EnImplCopyWith<_$EnImpl> get copyWith =>
      __$$EnImplCopyWithImpl<_$EnImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EnImplToJson(
      this,
    );
  }
}

abstract class _En implements En {
  factory _En({@HiveField(0) String? name}) = _$EnImpl;

  factory _En.fromJson(Map<String, dynamic> json) = _$EnImpl.fromJson;

  @override
  @HiveField(0)
  String? get name;
  @HiveField(0)
  set name(String? value);

  /// Create a copy of En
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EnImplCopyWith<_$EnImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
