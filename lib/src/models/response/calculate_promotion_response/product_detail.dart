import 'package:freezed_annotation/freezed_annotation.dart';

part 'gen/product_detail.freezed.dart';

part 'gen/product_detail.g.dart';

@unfreezed
class ProductDetail with _$ProductDetail {
  @JsonSerializable(fieldRename: FieldRename.none)
  factory ProductDetail({
    int? id,
    int? treeCompanyId,
    int? treeDivisionId,
    int? treeCategoryId,
    int? treeBrandId,
    dynamic treeProductId,
    dynamic treePackTypeId,
    dynamic treePackSizeId,
    String? code,
    String? name,
    String? displayName,
    String? description,
    String? packType,
    String? packSize,
    double? price,
    String? type,
    dynamic genre,
    int? isExternal,
    int? isSaleable,
    String? expireFormatDate,
    String? sellingType,
    int? isControlledStock,
    String? taxType,
    @JsonKey(name: 'isIncludedVAT') int? isIncludedVat,
    @JsonKey(name: 'VAT') int? vat,
    String? vatNumber,
    String? unitType,
    String? promotionType,
    String? specialEventType,
    String? segment,
    double? converter,
    int? volume,
    int? capacity,
    @JsonKey(name: 'UOM') String? uom,
    String? returnType,
    int? isAllowedPromotion,
    String? logo,
    String? thumbnail,
    int? priority,
    String? conduction,
    int? createdBy,
    int? updatedBy,
    dynamic referenceId,
    String? groupType,
    int? displayGroupId,
    String? productLevelSeven,
    String? status,
    dynamic size,
    int? sequence,
    String? colorCode,
    dynamic storageId,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _ProductDetail;

  factory ProductDetail.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailFromJson(json);
}
