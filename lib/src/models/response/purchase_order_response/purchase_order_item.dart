import 'package:freezed_annotation/freezed_annotation.dart';

import '../category_response/created_by.dart';
import '../category_response/updated_by.dart';
import '../user_response/user.dart';
import 'delivery_order.dart';
import 'order_detail.dart';

part 'gen/purchase_order_item.freezed.dart';

part 'gen/purchase_order_item.g.dart';

@unfreezed
class PurchaseOrderItem with _$PurchaseOrderItem {
  @JsonSerializable(fieldRename: FieldRename.none)
  factory PurchaseOrderItem({
    int? id,
    String? code,
    int? outletId,
    int? dealerId,
    int? employeeId,
    int? userId,
    dynamic employeeVisitId,
    dynamic returnReasonId,
    dynamic referenceId,
    dynamic referenceType,
    String? type,
    String? boundType,
    int? isScheduled,
    List<dynamic>? selectedPromotionIds,
    int? isExcludedPromotion,
    @JsonKey(name: 'isIncludedVAT') int? isIncludedVat,
    int? creditLimit,
    int? creditTerm,
    int? totalQty,
    @JsonKey(name: 'VATRate') int? vatRate,
    double? discountRate,
    double? discountPrice,
    double? subTotalAmount,
    double? totalDiscountAmount,
    @JsonKey(name: 'totalVATAmount') int? totalVatAmount,
    double? totalAmount,
    DateTime? orderedAt,
    DateTime? requestedDeliverAt,
    DateTime? deliveredAt,
    DateTime? settledAt,
    String? orderStatus,
    String? orderMethod,
    String? paymentStatus,
    String? paymentMethod,
    String? deliveryStatus,
    String? deliveryMethod,
    String? requestStatus,
    dynamic requestMethod,
    CreatedBy? createdBy,
    UpdatedBy? updatedBy,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? orderId,
    String? outletName,
    String? outletPhone,
    String? outletAddress,
    String? saleName,
    String? salePhone,
    String? dealerName,
    String? dealerPhone,
    String? dealerAddress,
    String? deliveryAddress,
    String? deliveryPhone,
    dynamic cancelReason,
    dynamic remark,
    @JsonKey(name: 'VATNumber') dynamic vatNumber,
    User? user,
    DeliveryOrder? deliveryOrder,
    OrderDetail? orderDetail,
    int? totalDeliveredQty,
    int? totalOnDeliveredQty,
    int? totalRemainQty,
    dynamic returnId,
    dynamic reference,
    dynamic returnOrder,
    bool? isPromotion,
  }) = _PurchaseOrderItem;

  factory PurchaseOrderItem.fromJson(Map<String, dynamic> json) =>
      _$PurchaseOrderItemFromJson(json);
}
