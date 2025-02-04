import 'package:freezed_annotation/freezed_annotation.dart';

import 'category_item.dart';
import 'metadata.dart';

part 'gen/category_response.freezed.dart';

part 'gen/category_response.g.dart';

@freezed
class CategoryResponse with _$CategoryResponse {
  factory CategoryResponse({
    List<CategoryItem>? data,
    Metadata? metadata,
  }) = _CategoryResponse;

  factory CategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoryResponseFromJson(json);
}
