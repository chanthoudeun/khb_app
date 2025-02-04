// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../purchase_order_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PurchaseOrderResponseImpl _$$PurchaseOrderResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PurchaseOrderResponseImpl(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => PurchaseOrderItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      metadata: json['metadata'] == null
          ? null
          : Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PurchaseOrderResponseImplToJson(
        _$PurchaseOrderResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'metadata': instance.metadata?.toJson(),
    };
