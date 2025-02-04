// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../category_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryItemImpl _$$CategoryItemImplFromJson(Map<String, dynamic> json) =>
    _$CategoryItemImpl(
      id: (json['id'] as num?)?.toInt(),
      parentId: json['parentId'],
      name: json['name'] as String?,
      code: json['code'] as String?,
      level: json['level'],
      sequence: (json['sequence'] as num?)?.toInt(),
      capacity: json['capacity'],
      type: json['type'] as String?,
      productType: json['productType'] as String?,
      status: json['status'] as String?,
      description: json['description'] as String?,
      icon: json['icon'] as String?,
      isExternal: (json['isExternal'] as num?)?.toInt(),
      colorCode: json['colorCode'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$CategoryItemImplToJson(_$CategoryItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parentId': instance.parentId,
      'name': instance.name,
      'code': instance.code,
      'level': instance.level,
      'sequence': instance.sequence,
      'capacity': instance.capacity,
      'type': instance.type,
      'productType': instance.productType,
      'status': instance.status,
      'description': instance.description,
      'icon': instance.icon,
      'isExternal': instance.isExternal,
      'colorCode': instance.colorCode,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
