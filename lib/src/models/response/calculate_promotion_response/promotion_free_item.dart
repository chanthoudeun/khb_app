import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:khb_app/src/models/response/calculate_promotion_response/product_detail.dart';

import 'min_multiply.dart';
import 'product.dart';

part 'gen/promotion_free_item.freezed.dart';

part 'gen/promotion_free_item.g.dart';

@unfreezed
class PromotionFreeItem with _$PromotionFreeItem {
  @JsonSerializable(fieldRename: FieldRename.none)
  factory PromotionFreeItem({
    int? qty,
    int? point,
    int? discount,
    String? type,
    bool? isFreePurchaseItem,
    int? productId,
    List<int>? productIds,
    double? unitPrice,
    double? discountPrice,
    double? discountRate,
    MinMultiply? minMultiply,
    int? totalQty,
    bool? isPromotion,
    int? promotionId,
    String? unitType,
    String? operation,
    String? productName,
    Product? product,
    double? totalDeliveredQty,
    double? totalRemainQty,
    bool? isInventory,
    ProductDetail? productDetail,
  }) = _PromotionFreeItem;

  factory PromotionFreeItem.fromJson(Map<String, dynamic> json) =>
      _$PromotionFreeItemFromJson(json);
}
