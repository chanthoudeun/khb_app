import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:khb_app/src/models/response/calculate_promotion_response/locale.dart';

import '../category_response/en.dart';
import '../category_response/km.dart';

part 'gen/locales.freezed.dart';

part 'gen/locales.g.dart';

@unfreezed
class Locales with _$Locales {
  @JsonSerializable(fieldRename: FieldRename.none)
  factory Locales({
    int? id,
    String? code,
    int? productId,
    Locale? locale,
    Locales? locales,
    En? en,
    Km? km,
  }) = _Locales;

  factory Locales.fromJson(Map<String, dynamic> json) =>
      _$LocalesFromJson(json);
}
