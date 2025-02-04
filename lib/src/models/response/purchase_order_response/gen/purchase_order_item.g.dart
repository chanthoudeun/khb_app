// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../purchase_order_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PurchaseOrderItemImpl _$$PurchaseOrderItemImplFromJson(
        Map<String, dynamic> json) =>
    _$PurchaseOrderItemImpl(
      id: (json['id'] as num?)?.toInt(),
      code: json['code'] as String?,
      outletId: (json['outletId'] as num?)?.toInt(),
      dealerId: (json['dealerId'] as num?)?.toInt(),
      employeeId: (json['employeeId'] as num?)?.toInt(),
      userId: (json['userId'] as num?)?.toInt(),
      employeeVisitId: json['employeeVisitId'],
      returnReasonId: json['returnReasonId'],
      referenceId: json['referenceId'],
      referenceType: json['referenceType'],
      type: json['type'] as String?,
      boundType: json['boundType'] as String?,
      isScheduled: (json['isScheduled'] as num?)?.toInt(),
      selectedPromotionIds: json['selectedPromotionIds'] as List<dynamic>?,
      isExcludedPromotion: (json['isExcludedPromotion'] as num?)?.toInt(),
      isIncludedVat: (json['isIncludedVAT'] as num?)?.toInt(),
      creditLimit: (json['creditLimit'] as num?)?.toInt(),
      creditTerm: (json['creditTerm'] as num?)?.toInt(),
      totalQty: (json['totalQty'] as num?)?.toInt(),
      vatRate: (json['VATRate'] as num?)?.toInt(),
      discountRate: (json['discountRate'] as num?)?.toDouble(),
      discountPrice: (json['discountPrice'] as num?)?.toDouble(),
      subTotalAmount: (json['subTotalAmount'] as num?)?.toDouble(),
      totalDiscountAmount: (json['totalDiscountAmount'] as num?)?.toDouble(),
      totalVatAmount: (json['totalVATAmount'] as num?)?.toInt(),
      totalAmount: (json['totalAmount'] as num?)?.toDouble(),
      orderedAt: json['orderedAt'] == null
          ? null
          : DateTime.parse(json['orderedAt'] as String),
      requestedDeliverAt: json['requestedDeliverAt'] == null
          ? null
          : DateTime.parse(json['requestedDeliverAt'] as String),
      deliveredAt: json['deliveredAt'] == null
          ? null
          : DateTime.parse(json['deliveredAt'] as String),
      settledAt: json['settledAt'] == null
          ? null
          : DateTime.parse(json['settledAt'] as String),
      orderStatus: json['orderStatus'] as String?,
      orderMethod: json['orderMethod'] as String?,
      paymentStatus: json['paymentStatus'] as String?,
      paymentMethod: json['paymentMethod'] as String?,
      deliveryStatus: json['deliveryStatus'] as String?,
      deliveryMethod: json['deliveryMethod'] as String?,
      requestStatus: json['requestStatus'] as String?,
      requestMethod: json['requestMethod'],
      createdBy: json['createdBy'] == null
          ? null
          : CreatedBy.fromJson(json['createdBy'] as Map<String, dynamic>),
      updatedBy: json['updatedBy'] == null
          ? null
          : UpdatedBy.fromJson(json['updatedBy'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
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
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      deliveryOrder: json['deliveryOrder'] == null
          ? null
          : DeliveryOrder.fromJson(
              json['deliveryOrder'] as Map<String, dynamic>),
      orderDetail: json['orderDetail'] == null
          ? null
          : OrderDetail.fromJson(json['orderDetail'] as Map<String, dynamic>),
      totalDeliveredQty: (json['totalDeliveredQty'] as num?)?.toInt(),
      totalOnDeliveredQty: (json['totalOnDeliveredQty'] as num?)?.toInt(),
      totalRemainQty: (json['totalRemainQty'] as num?)?.toInt(),
      returnId: json['returnId'],
      reference: json['reference'],
      returnOrder: json['returnOrder'],
      isPromotion: json['isPromotion'] as bool?,
    );

Map<String, dynamic> _$$PurchaseOrderItemImplToJson(
        _$PurchaseOrderItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'outletId': instance.outletId,
      'dealerId': instance.dealerId,
      'employeeId': instance.employeeId,
      'userId': instance.userId,
      'employeeVisitId': instance.employeeVisitId,
      'returnReasonId': instance.returnReasonId,
      'referenceId': instance.referenceId,
      'referenceType': instance.referenceType,
      'type': instance.type,
      'boundType': instance.boundType,
      'isScheduled': instance.isScheduled,
      'selectedPromotionIds': instance.selectedPromotionIds,
      'isExcludedPromotion': instance.isExcludedPromotion,
      'isIncludedVAT': instance.isIncludedVat,
      'creditLimit': instance.creditLimit,
      'creditTerm': instance.creditTerm,
      'totalQty': instance.totalQty,
      'VATRate': instance.vatRate,
      'discountRate': instance.discountRate,
      'discountPrice': instance.discountPrice,
      'subTotalAmount': instance.subTotalAmount,
      'totalDiscountAmount': instance.totalDiscountAmount,
      'totalVATAmount': instance.totalVatAmount,
      'totalAmount': instance.totalAmount,
      'orderedAt': instance.orderedAt?.toIso8601String(),
      'requestedDeliverAt': instance.requestedDeliverAt?.toIso8601String(),
      'deliveredAt': instance.deliveredAt?.toIso8601String(),
      'settledAt': instance.settledAt?.toIso8601String(),
      'orderStatus': instance.orderStatus,
      'orderMethod': instance.orderMethod,
      'paymentStatus': instance.paymentStatus,
      'paymentMethod': instance.paymentMethod,
      'deliveryStatus': instance.deliveryStatus,
      'deliveryMethod': instance.deliveryMethod,
      'requestStatus': instance.requestStatus,
      'requestMethod': instance.requestMethod,
      'createdBy': instance.createdBy?.toJson(),
      'updatedBy': instance.updatedBy?.toJson(),
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
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
      'user': instance.user?.toJson(),
      'deliveryOrder': instance.deliveryOrder?.toJson(),
      'orderDetail': instance.orderDetail?.toJson(),
      'totalDeliveredQty': instance.totalDeliveredQty,
      'totalOnDeliveredQty': instance.totalOnDeliveredQty,
      'totalRemainQty': instance.totalRemainQty,
      'returnId': instance.returnId,
      'reference': instance.reference,
      'returnOrder': instance.returnOrder,
      'isPromotion': instance.isPromotion,
    };
