import 'package:freezed_annotation/freezed_annotation.dart';

part 'gen/delivery_order.freezed.dart';

part 'gen/delivery_order.g.dart';

@unfreezed
class DeliveryOrder with _$DeliveryOrder {
  @JsonSerializable(fieldRename: FieldRename.none)
  factory DeliveryOrder({
    int? orderId,
    int? totalQty,
  }) = _DeliveryOrder;

  factory DeliveryOrder.fromJson(Map<String, dynamic> json) =>
      _$DeliveryOrderFromJson(json);
}
