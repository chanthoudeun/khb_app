import 'package:freezed_annotation/freezed_annotation.dart';

import 'purchase_order_item.dart';
import 'metadata.dart';

part 'gen/purchase_order_response.freezed.dart';

part 'gen/purchase_order_response.g.dart';

@unfreezed
class PurchaseOrderResponse with _$PurchaseOrderResponse {
  @JsonSerializable(fieldRename: FieldRename.none)
  factory PurchaseOrderResponse({
    List<PurchaseOrderItem>? data,
    Metadata? metadata,
  }) = _PurchaseOrderResponse;

  factory PurchaseOrderResponse.fromJson(Map<String, dynamic> json) =>
      _$PurchaseOrderResponseFromJson(json);
}
