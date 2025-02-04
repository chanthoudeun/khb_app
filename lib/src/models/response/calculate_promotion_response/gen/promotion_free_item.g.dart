// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../promotion_free_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PromotionFreeItemImpl _$$PromotionFreeItemImplFromJson(
        Map<String, dynamic> json) =>
    _$PromotionFreeItemImpl(
      qty: (json['qty'] as num?)?.toInt(),
      point: (json['point'] as num?)?.toInt(),
      discount: (json['discount'] as num?)?.toInt(),
      type: json['type'] as String?,
      isFreePurchaseItem: json['isFreePurchaseItem'] as bool?,
      productId: (json['productId'] as num?)?.toInt(),
      productIds: (json['productIds'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      unitPrice: (json['unitPrice'] as num?)?.toDouble(),
      discountPrice: (json['discountPrice'] as num?)?.toDouble(),
      discountRate: (json['discountRate'] as num?)?.toDouble(),
      minMultiply: json['minMultiply'] == null
          ? null
          : MinMultiply.fromJson(json['minMultiply'] as Map<String, dynamic>),
      totalQty: (json['totalQty'] as num?)?.toInt(),
      isPromotion: json['isPromotion'] as bool?,
      promotionId: (json['promotionId'] as num?)?.toInt(),
      unitType: json['unitType'] as String?,
      operation: json['operation'] as String?,
      productName: json['productName'] as String?,
      product: json['product'] == null
          ? null
          : Product.fromJson(json['product'] as Map<String, dynamic>),
      totalDeliveredQty: (json['totalDeliveredQty'] as num?)?.toDouble(),
      totalRemainQty: (json['totalRemainQty'] as num?)?.toDouble(),
      isInventory: json['isInventory'] as bool?,
      productDetail: json['productDetail'] == null
          ? null
          : ProductDetail.fromJson(
              json['productDetail'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PromotionFreeItemImplToJson(
        _$PromotionFreeItemImpl instance) =>
    <String, dynamic>{
      'qty': instance.qty,
      'point': instance.point,
      'discount': instance.discount,
      'type': instance.type,
      'isFreePurchaseItem': instance.isFreePurchaseItem,
      'productId': instance.productId,
      'productIds': instance.productIds,
      'unitPrice': instance.unitPrice,
      'discountPrice': instance.discountPrice,
      'discountRate': instance.discountRate,
      'minMultiply': instance.minMultiply?.toJson(),
      'totalQty': instance.totalQty,
      'isPromotion': instance.isPromotion,
      'promotionId': instance.promotionId,
      'unitType': instance.unitType,
      'operation': instance.operation,
      'productName': instance.productName,
      'product': instance.product?.toJson(),
      'totalDeliveredQty': instance.totalDeliveredQty,
      'totalRemainQty': instance.totalRemainQty,
      'isInventory': instance.isInventory,
      'productDetail': instance.productDetail?.toJson(),
    };
