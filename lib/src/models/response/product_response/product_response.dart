import 'package:freezed_annotation/freezed_annotation.dart';

import 'product.dart';
import 'metadata.dart';

part 'gen/product_response.freezed.dart';

part 'gen/product_response.g.dart';

@freezed
class ProductResponse with _$ProductResponse {
  factory ProductResponse({
    List<Product>? data,
    Metadata? metadata,
  }) = _ProductResponse;

  factory ProductResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductResponseFromJson(json);
}
