// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../min_multiply.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MinMultiplyImpl _$$MinMultiplyImplFromJson(Map<String, dynamic> json) =>
    _$MinMultiplyImpl(
      totalDiscount: (json['total_discount'] as num?)?.toInt(),
      maxDiscount: (json['max_discount'] as num?)?.toInt(),
      repeatMultiply: (json['repeat_multiply'] as num?)?.toInt(),
      required: (json['required'] as num?)?.toInt(),
      requiredType: json['required_type'] as String?,
      productGroupId: (json['product_group_id'] as num?)?.toInt(),
      productIds: json['product_ids'] as List<dynamic>?,
      promotionId: (json['promotion_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$MinMultiplyImplToJson(_$MinMultiplyImpl instance) =>
    <String, dynamic>{
      'total_discount': instance.totalDiscount,
      'max_discount': instance.maxDiscount,
      'repeat_multiply': instance.repeatMultiply,
      'required': instance.required,
      'required_type': instance.requiredType,
      'product_group_id': instance.productGroupId,
      'product_ids': instance.productIds,
      'promotion_id': instance.promotionId,
    };
