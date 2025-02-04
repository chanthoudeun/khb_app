// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../firm_price_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FirmPriceGroupImpl _$$FirmPriceGroupImplFromJson(Map<String, dynamic> json) =>
    _$FirmPriceGroupImpl(
      id: (json['id'] as num?)?.toInt(),
      code: json['code'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      totalFirm: (json['totalFirm'] as num?)?.toInt(),
      type: json['type'] as String?,
      status: json['status'] as String?,
      createdBy: (json['createdBy'] as num?)?.toInt(),
      updatedBy: (json['updatedBy'] as num?)?.toInt(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$FirmPriceGroupImplToJson(
        _$FirmPriceGroupImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'name': instance.name,
      'description': instance.description,
      'totalFirm': instance.totalFirm,
      'type': instance.type,
      'status': instance.status,
      'createdBy': instance.createdBy,
      'updatedBy': instance.updatedBy,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
