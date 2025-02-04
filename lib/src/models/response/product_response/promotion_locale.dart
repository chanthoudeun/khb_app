import 'package:freezed_annotation/freezed_annotation.dart';

import 'locale.dart';
import 'locales.dart';

part 'gen/promotion_locale.freezed.dart';

part 'gen/promotion_locale.g.dart';

@freezed
class PromotionLocale with _$PromotionLocale {
  factory PromotionLocale({
    int? id,
    String? code,
    String? name,
    String? description,
    String? type,
    int? promotionId,
    Locale? locale,
    Locales? locales,
  }) = _PromotionLocale;

  factory PromotionLocale.fromJson(Map<String, dynamic> json) =>
      _$PromotionLocaleFromJson(json);
}
