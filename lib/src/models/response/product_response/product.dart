import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import 'locales.dart';
import 'promotion_locale.dart';

part 'gen/product.freezed.dart';

part 'gen/product.g.dart';

@unfreezed
class Product with _$Product {
  @HiveType(typeId: 3)
  @JsonSerializable(fieldRename: FieldRename.none)
  factory Product({
    @HiveField(0) int? firmId,
    @HiveField(1) int? productId,
    @HiveField(2) int? qty,
    @HiveField(3) int? productQty,
    @HiveField(4) int? id,
    @HiveField(5) int? treeCompanyId,
    @HiveField(6) int? treeDivisionId,
    @HiveField(7) int? treeCategoryId,
    @HiveField(8) int? treeBrandId,
    @HiveField(9) int? treeProductId,
    @HiveField(10) int? treePackTypeId,
    @HiveField(11) int? treePackSizeId,
    @HiveField(12) String? code,
    @HiveField(13) String? name,
    @HiveField(14) String? displayName,
    @HiveField(15) String? description,
    @HiveField(16) String? packType,
    @HiveField(17) String? packSize,
    @HiveField(18) double? price,
    @HiveField(19) String? type,
    @HiveField(20) String? genre,
    @HiveField(21) int? isExternal,
    @HiveField(22) int? isSaleable,
    @HiveField(23) String? expireFormatDate,
    @HiveField(25) String? sellingType,
    @HiveField(26) int? isControlledStock,
    @HiveField(27) String? taxType,
    @HiveField(28) @JsonKey(name: 'isIncludedVAT') int? isIncludedVat,
    @JsonKey(name: 'VAT') int? vat,
    String? vatNumber,
    @HiveField(38) String? unitType,
    String? promotionType,
    String? specialEventType,
    String? segment,
    double? converter,
    int? volume,
    int? capacity,
    @HiveField(29) @JsonKey(name: 'UOM') String? uom,
    String? returnType,
    int? isAllowedPromotion,
    @HiveField(30) String? logo,
    String? thumbnail,
    int? priority,
    String? conduction,
    // int? createdBy,
    // int? updatedBy,
    String? referenceId,
    String? groupType,
    int? displayGroupId,
    String? productLevelSeven,
    String? status,
    String? size,
    int? sequence,
    String? colorCode,
    int? storageId,
    DateTime? createdAt,
    DateTime? updatedAt,
    @HiveField(36) List<int>? promotionIds,
    @HiveField(35) List<int>? productGroupIds,
    List<PromotionLocale>? promotionLocales,
    @HiveField(31) bool? isFavorite,
    @HiveField(32) Locales? locales,
    @HiveField(33) bool? isExcludedPromotion,
    @HiveField(34) List<int>? selectedPromotionIds,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
