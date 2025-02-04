// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../calculate_promotion_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CalculatePromotionResponse _$CalculatePromotionResponseFromJson(
    Map<String, dynamic> json) {
  return _CalculatePromotionResponse.fromJson(json);
}

/// @nodoc
mixin _$CalculatePromotionResponse {
  List<dynamic>? get promotionDiscounts => throw _privateConstructorUsedError;
  set promotionDiscounts(List<dynamic>? value) =>
      throw _privateConstructorUsedError;
  List<PromotionFreeItem>? get promotionFreeItems =>
      throw _privateConstructorUsedError;
  set promotionFreeItems(List<PromotionFreeItem>? value) =>
      throw _privateConstructorUsedError;

  /// Serializes this CalculatePromotionResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CalculatePromotionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CalculatePromotionResponseCopyWith<CalculatePromotionResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalculatePromotionResponseCopyWith<$Res> {
  factory $CalculatePromotionResponseCopyWith(CalculatePromotionResponse value,
          $Res Function(CalculatePromotionResponse) then) =
      _$CalculatePromotionResponseCopyWithImpl<$Res,
          CalculatePromotionResponse>;
  @useResult
  $Res call(
      {List<dynamic>? promotionDiscounts,
      List<PromotionFreeItem>? promotionFreeItems});
}

/// @nodoc
class _$CalculatePromotionResponseCopyWithImpl<$Res,
        $Val extends CalculatePromotionResponse>
    implements $CalculatePromotionResponseCopyWith<$Res> {
  _$CalculatePromotionResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CalculatePromotionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promotionDiscounts = freezed,
    Object? promotionFreeItems = freezed,
  }) {
    return _then(_value.copyWith(
      promotionDiscounts: freezed == promotionDiscounts
          ? _value.promotionDiscounts
          : promotionDiscounts // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      promotionFreeItems: freezed == promotionFreeItems
          ? _value.promotionFreeItems
          : promotionFreeItems // ignore: cast_nullable_to_non_nullable
              as List<PromotionFreeItem>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CalculatePromotionResponseImplCopyWith<$Res>
    implements $CalculatePromotionResponseCopyWith<$Res> {
  factory _$$CalculatePromotionResponseImplCopyWith(
          _$CalculatePromotionResponseImpl value,
          $Res Function(_$CalculatePromotionResponseImpl) then) =
      __$$CalculatePromotionResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<dynamic>? promotionDiscounts,
      List<PromotionFreeItem>? promotionFreeItems});
}

/// @nodoc
class __$$CalculatePromotionResponseImplCopyWithImpl<$Res>
    extends _$CalculatePromotionResponseCopyWithImpl<$Res,
        _$CalculatePromotionResponseImpl>
    implements _$$CalculatePromotionResponseImplCopyWith<$Res> {
  __$$CalculatePromotionResponseImplCopyWithImpl(
      _$CalculatePromotionResponseImpl _value,
      $Res Function(_$CalculatePromotionResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of CalculatePromotionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promotionDiscounts = freezed,
    Object? promotionFreeItems = freezed,
  }) {
    return _then(_$CalculatePromotionResponseImpl(
      promotionDiscounts: freezed == promotionDiscounts
          ? _value.promotionDiscounts
          : promotionDiscounts // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      promotionFreeItems: freezed == promotionFreeItems
          ? _value.promotionFreeItems
          : promotionFreeItems // ignore: cast_nullable_to_non_nullable
              as List<PromotionFreeItem>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _$CalculatePromotionResponseImpl implements _CalculatePromotionResponse {
  _$CalculatePromotionResponseImpl(
      {this.promotionDiscounts, this.promotionFreeItems});

  factory _$CalculatePromotionResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CalculatePromotionResponseImplFromJson(json);

  @override
  List<dynamic>? promotionDiscounts;
  @override
  List<PromotionFreeItem>? promotionFreeItems;

  @override
  String toString() {
    return 'CalculatePromotionResponse(promotionDiscounts: $promotionDiscounts, promotionFreeItems: $promotionFreeItems)';
  }

  /// Create a copy of CalculatePromotionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CalculatePromotionResponseImplCopyWith<_$CalculatePromotionResponseImpl>
      get copyWith => __$$CalculatePromotionResponseImplCopyWithImpl<
          _$CalculatePromotionResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CalculatePromotionResponseImplToJson(
      this,
    );
  }
}

abstract class _CalculatePromotionResponse
    implements CalculatePromotionResponse {
  factory _CalculatePromotionResponse(
          {List<dynamic>? promotionDiscounts,
          List<PromotionFreeItem>? promotionFreeItems}) =
      _$CalculatePromotionResponseImpl;

  factory _CalculatePromotionResponse.fromJson(Map<String, dynamic> json) =
      _$CalculatePromotionResponseImpl.fromJson;

  @override
  List<dynamic>? get promotionDiscounts;
  set promotionDiscounts(List<dynamic>? value);
  @override
  List<PromotionFreeItem>? get promotionFreeItems;
  set promotionFreeItems(List<PromotionFreeItem>? value);

  /// Create a copy of CalculatePromotionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CalculatePromotionResponseImplCopyWith<_$CalculatePromotionResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
