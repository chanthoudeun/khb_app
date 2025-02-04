// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../order_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderDetailImpl _$$OrderDetailImplFromJson(Map<String, dynamic> json) =>
    _$OrderDetailImpl(
      orderId: (json['orderId'] as num?)?.toInt(),
      outletName: json['outletName'] as String?,
      outletPhone: json['outletPhone'] as String?,
      outletAddress: json['outletAddress'] as String?,
      saleName: json['saleName'] as String?,
      salePhone: json['salePhone'] as String?,
      dealerName: json['dealerName'] as String?,
      dealerPhone: json['dealerPhone'] as String?,
      dealerAddress: json['dealerAddress'] as String?,
      deliveryAddress: json['deliveryAddress'] as String?,
      deliveryPhone: json['deliveryPhone'] as String?,
      cancelReason: json['cancelReason'],
      remark: json['remark'],
      vatNumber: json['VATNumber'],
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$OrderDetailImplToJson(_$OrderDetailImpl instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'outletName': instance.outletName,
      'outletPhone': instance.outletPhone,
      'outletAddress': instance.outletAddress,
      'saleName': instance.saleName,
      'salePhone': instance.salePhone,
      'dealerName': instance.dealerName,
      'dealerPhone': instance.dealerPhone,
      'dealerAddress': instance.dealerAddress,
      'deliveryAddress': instance.deliveryAddress,
      'deliveryPhone': instance.deliveryPhone,
      'cancelReason': instance.cancelReason,
      'remark': instance.remark,
      'VATNumber': instance.vatNumber,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
