import 'package:freezed_annotation/freezed_annotation.dart';

part 'gen/order_detail.freezed.dart';

part 'gen/order_detail.g.dart';

@unfreezed
class OrderDetail with _$OrderDetail {
  @JsonSerializable(fieldRename: FieldRename.none)
  factory OrderDetail({
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
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _OrderDetail;

  factory OrderDetail.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailFromJson(json);
}
