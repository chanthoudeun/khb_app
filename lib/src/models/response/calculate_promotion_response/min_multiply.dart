import 'package:freezed_annotation/freezed_annotation.dart';

part 'gen/min_multiply.freezed.dart';

part 'gen/min_multiply.g.dart';

@freezed
class MinMultiply with _$MinMultiply {
  factory MinMultiply({
    int? totalDiscount,
    int? maxDiscount,
    int? repeatMultiply,
    int? required,
    String? requiredType,
    int? productGroupId,
    List<dynamic>? productIds,
    int? promotionId,
  }) = _MinMultiply;

  factory MinMultiply.fromJson(Map<String, dynamic> json) =>
      _$MinMultiplyFromJson(json);
}
