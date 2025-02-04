import 'package:freezed_annotation/freezed_annotation.dart';

import 'created_by.dart';
import 'locales.dart';
import 'updated_by.dart';

part 'gen/category_item.freezed.dart';

part 'gen/category_item.g.dart';

@unfreezed
class CategoryItem with _$CategoryItem {
  @JsonSerializable(fieldRename: FieldRename.none)
  factory CategoryItem({
    int? id,
    dynamic parentId,
    String? name,
    String? code,
    dynamic level,
    int? sequence,
    dynamic capacity,
    String? type,
    String? productType,
    String? status,
    String? description,
    String? icon,
    int? isExternal,
    // CreatedBy? createdBy,
    // UpdatedBy? updatedBy,
    String? colorCode,
    DateTime? createdAt,
    DateTime? updatedAt,
    // Locales? locales,
  }) = _CategoryItem;

  factory CategoryItem.fromJson(Map<String, dynamic> json) =>
      _$CategoryItemFromJson(json);
}
