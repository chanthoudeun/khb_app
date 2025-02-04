// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../product.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductImplAdapter extends TypeAdapter<_$ProductImpl> {
  @override
  final int typeId = 3;

  @override
  _$ProductImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$ProductImpl(
      firmId: fields[0] as int?,
      productId: fields[1] as int?,
      qty: fields[2] as int?,
      productQty: fields[3] as int?,
      id: fields[4] as int?,
      treeCompanyId: fields[5] as int?,
      treeDivisionId: fields[6] as int?,
      treeCategoryId: fields[7] as int?,
      treeBrandId: fields[8] as int?,
      treeProductId: fields[9] as int?,
      treePackTypeId: fields[10] as int?,
      treePackSizeId: fields[11] as int?,
      code: fields[12] as String?,
      name: fields[13] as String?,
      displayName: fields[14] as String?,
      description: fields[15] as String?,
      packType: fields[16] as String?,
      packSize: fields[17] as String?,
      price: fields[18] as double?,
      type: fields[19] as String?,
      genre: fields[20] as String?,
      isExternal: fields[21] as int?,
      isSaleable: fields[22] as int?,
      expireFormatDate: fields[23] as String?,
      sellingType: fields[25] as String?,
      isControlledStock: fields[26] as int?,
      taxType: fields[27] as String?,
      isIncludedVat: fields[28] as int?,
      unitType: fields[38] as String?,
      uom: fields[29] as String?,
      logo: fields[30] as String?,
      promotionIds: (fields[36] as List?)?.cast<int>(),
      productGroupIds: (fields[35] as List?)?.cast<int>(),
      isFavorite: fields[31] as bool?,
      locales: fields[32] as Locales?,
      isExcludedPromotion: fields[33] as bool?,
      selectedPromotionIds: (fields[34] as List?)?.cast<int>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$ProductImpl obj) {
    writer
      ..writeByte(37)
      ..writeByte(0)
      ..write(obj.firmId)
      ..writeByte(1)
      ..write(obj.productId)
      ..writeByte(2)
      ..write(obj.qty)
      ..writeByte(3)
      ..write(obj.productQty)
      ..writeByte(4)
      ..write(obj.id)
      ..writeByte(5)
      ..write(obj.treeCompanyId)
      ..writeByte(6)
      ..write(obj.treeDivisionId)
      ..writeByte(7)
      ..write(obj.treeCategoryId)
      ..writeByte(8)
      ..write(obj.treeBrandId)
      ..writeByte(9)
      ..write(obj.treeProductId)
      ..writeByte(10)
      ..write(obj.treePackTypeId)
      ..writeByte(11)
      ..write(obj.treePackSizeId)
      ..writeByte(12)
      ..write(obj.code)
      ..writeByte(13)
      ..write(obj.name)
      ..writeByte(14)
      ..write(obj.displayName)
      ..writeByte(15)
      ..write(obj.description)
      ..writeByte(16)
      ..write(obj.packType)
      ..writeByte(17)
      ..write(obj.packSize)
      ..writeByte(18)
      ..write(obj.price)
      ..writeByte(19)
      ..write(obj.type)
      ..writeByte(20)
      ..write(obj.genre)
      ..writeByte(21)
      ..write(obj.isExternal)
      ..writeByte(22)
      ..write(obj.isSaleable)
      ..writeByte(23)
      ..write(obj.expireFormatDate)
      ..writeByte(25)
      ..write(obj.sellingType)
      ..writeByte(26)
      ..write(obj.isControlledStock)
      ..writeByte(27)
      ..write(obj.taxType)
      ..writeByte(28)
      ..write(obj.isIncludedVat)
      ..writeByte(38)
      ..write(obj.unitType)
      ..writeByte(29)
      ..write(obj.uom)
      ..writeByte(30)
      ..write(obj.logo)
      ..writeByte(36)
      ..write(obj.promotionIds)
      ..writeByte(35)
      ..write(obj.productGroupIds)
      ..writeByte(31)
      ..write(obj.isFavorite)
      ..writeByte(32)
      ..write(obj.locales)
      ..writeByte(33)
      ..write(obj.isExcludedPromotion)
      ..writeByte(34)
      ..write(obj.selectedPromotionIds);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      firmId: (json['firmId'] as num?)?.toInt(),
      productId: (json['productId'] as num?)?.toInt(),
      qty: (json['qty'] as num?)?.toInt(),
      productQty: (json['productQty'] as num?)?.toInt(),
      id: (json['id'] as num?)?.toInt(),
      treeCompanyId: (json['treeCompanyId'] as num?)?.toInt(),
      treeDivisionId: (json['treeDivisionId'] as num?)?.toInt(),
      treeCategoryId: (json['treeCategoryId'] as num?)?.toInt(),
      treeBrandId: (json['treeBrandId'] as num?)?.toInt(),
      treeProductId: (json['treeProductId'] as num?)?.toInt(),
      treePackTypeId: (json['treePackTypeId'] as num?)?.toInt(),
      treePackSizeId: (json['treePackSizeId'] as num?)?.toInt(),
      code: json['code'] as String?,
      name: json['name'] as String?,
      displayName: json['displayName'] as String?,
      description: json['description'] as String?,
      packType: json['packType'] as String?,
      packSize: json['packSize'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      type: json['type'] as String?,
      genre: json['genre'] as String?,
      isExternal: (json['isExternal'] as num?)?.toInt(),
      isSaleable: (json['isSaleable'] as num?)?.toInt(),
      expireFormatDate: json['expireFormatDate'] as String?,
      sellingType: json['sellingType'] as String?,
      isControlledStock: (json['isControlledStock'] as num?)?.toInt(),
      taxType: json['taxType'] as String?,
      isIncludedVat: (json['isIncludedVAT'] as num?)?.toInt(),
      vat: (json['VAT'] as num?)?.toInt(),
      vatNumber: json['vatNumber'] as String?,
      unitType: json['unitType'] as String?,
      promotionType: json['promotionType'] as String?,
      specialEventType: json['specialEventType'] as String?,
      segment: json['segment'] as String?,
      converter: (json['converter'] as num?)?.toDouble(),
      volume: (json['volume'] as num?)?.toInt(),
      capacity: (json['capacity'] as num?)?.toInt(),
      uom: json['UOM'] as String?,
      returnType: json['returnType'] as String?,
      isAllowedPromotion: (json['isAllowedPromotion'] as num?)?.toInt(),
      logo: json['logo'] as String?,
      thumbnail: json['thumbnail'] as String?,
      priority: (json['priority'] as num?)?.toInt(),
      conduction: json['conduction'] as String?,
      referenceId: json['referenceId'] as String?,
      groupType: json['groupType'] as String?,
      displayGroupId: (json['displayGroupId'] as num?)?.toInt(),
      productLevelSeven: json['productLevelSeven'] as String?,
      status: json['status'] as String?,
      size: json['size'] as String?,
      sequence: (json['sequence'] as num?)?.toInt(),
      colorCode: json['colorCode'] as String?,
      storageId: (json['storageId'] as num?)?.toInt(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      promotionIds: (json['promotionIds'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      productGroupIds: (json['productGroupIds'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      promotionLocales: (json['promotionLocales'] as List<dynamic>?)
          ?.map((e) => PromotionLocale.fromJson(e as Map<String, dynamic>))
          .toList(),
      isFavorite: json['isFavorite'] as bool?,
      locales: json['locales'] == null
          ? null
          : Locales.fromJson(json['locales'] as Map<String, dynamic>),
      isExcludedPromotion: json['isExcludedPromotion'] as bool?,
      selectedPromotionIds: (json['selectedPromotionIds'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'firmId': instance.firmId,
      'productId': instance.productId,
      'qty': instance.qty,
      'productQty': instance.productQty,
      'id': instance.id,
      'treeCompanyId': instance.treeCompanyId,
      'treeDivisionId': instance.treeDivisionId,
      'treeCategoryId': instance.treeCategoryId,
      'treeBrandId': instance.treeBrandId,
      'treeProductId': instance.treeProductId,
      'treePackTypeId': instance.treePackTypeId,
      'treePackSizeId': instance.treePackSizeId,
      'code': instance.code,
      'name': instance.name,
      'displayName': instance.displayName,
      'description': instance.description,
      'packType': instance.packType,
      'packSize': instance.packSize,
      'price': instance.price,
      'type': instance.type,
      'genre': instance.genre,
      'isExternal': instance.isExternal,
      'isSaleable': instance.isSaleable,
      'expireFormatDate': instance.expireFormatDate,
      'sellingType': instance.sellingType,
      'isControlledStock': instance.isControlledStock,
      'taxType': instance.taxType,
      'isIncludedVAT': instance.isIncludedVat,
      'VAT': instance.vat,
      'vatNumber': instance.vatNumber,
      'unitType': instance.unitType,
      'promotionType': instance.promotionType,
      'specialEventType': instance.specialEventType,
      'segment': instance.segment,
      'converter': instance.converter,
      'volume': instance.volume,
      'capacity': instance.capacity,
      'UOM': instance.uom,
      'returnType': instance.returnType,
      'isAllowedPromotion': instance.isAllowedPromotion,
      'logo': instance.logo,
      'thumbnail': instance.thumbnail,
      'priority': instance.priority,
      'conduction': instance.conduction,
      'referenceId': instance.referenceId,
      'groupType': instance.groupType,
      'displayGroupId': instance.displayGroupId,
      'productLevelSeven': instance.productLevelSeven,
      'status': instance.status,
      'size': instance.size,
      'sequence': instance.sequence,
      'colorCode': instance.colorCode,
      'storageId': instance.storageId,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'promotionIds': instance.promotionIds,
      'productGroupIds': instance.productGroupIds,
      'promotionLocales':
          instance.promotionLocales?.map((e) => e.toJson()).toList(),
      'isFavorite': instance.isFavorite,
      'locales': instance.locales?.toJson(),
      'isExcludedPromotion': instance.isExcludedPromotion,
      'selectedPromotionIds': instance.selectedPromotionIds,
    };
