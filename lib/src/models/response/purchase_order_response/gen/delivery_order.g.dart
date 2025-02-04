// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../delivery_order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeliveryOrderImpl _$$DeliveryOrderImplFromJson(Map<String, dynamic> json) =>
    _$DeliveryOrderImpl(
      orderId: (json['orderId'] as num?)?.toInt(),
      totalQty: (json['totalQty'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$DeliveryOrderImplToJson(_$DeliveryOrderImpl instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'totalQty': instance.totalQty,
    };
