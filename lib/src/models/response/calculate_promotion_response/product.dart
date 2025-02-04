import 'package:freezed_annotation/freezed_annotation.dart';

import 'locale.dart';
import 'locales.dart';

part 'gen/product.freezed.dart';

part 'gen/product.g.dart';

@unfreezed
class Product with _$Product {
  @JsonSerializable(fieldRename: FieldRename.none)
  factory Product({
    int? id,
    String? code,
    String? name,
    String? displayName,
    String? unitType,
    int? productId,
    Locale? locale,
    Locales? locales,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
