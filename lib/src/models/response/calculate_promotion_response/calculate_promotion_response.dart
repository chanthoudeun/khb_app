import 'package:freezed_annotation/freezed_annotation.dart';

import 'promotion_free_item.dart';

part 'gen/calculate_promotion_response.freezed.dart';

part 'gen/calculate_promotion_response.g.dart';

@unfreezed
class CalculatePromotionResponse with _$CalculatePromotionResponse {
  @JsonSerializable(fieldRename: FieldRename.none)
  factory CalculatePromotionResponse({
    List<dynamic>? promotionDiscounts,
    List<PromotionFreeItem>? promotionFreeItems,
  }) = _CalculatePromotionResponse;

  factory CalculatePromotionResponse.fromJson(Map<String, dynamic> json) =>
      _$CalculatePromotionResponseFromJson(json);
}
