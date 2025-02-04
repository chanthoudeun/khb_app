// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../calculate_promotion_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CalculatePromotionResponseImpl _$$CalculatePromotionResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CalculatePromotionResponseImpl(
      promotionDiscounts: json['promotionDiscounts'] as List<dynamic>?,
      promotionFreeItems: (json['promotionFreeItems'] as List<dynamic>?)
          ?.map((e) => PromotionFreeItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CalculatePromotionResponseImplToJson(
        _$CalculatePromotionResponseImpl instance) =>
    <String, dynamic>{
      'promotionDiscounts': instance.promotionDiscounts,
      'promotionFreeItems':
          instance.promotionFreeItems?.map((e) => e.toJson()).toList(),
    };
