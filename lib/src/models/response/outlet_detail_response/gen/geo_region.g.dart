// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../geo_region.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GeoRegionImpl _$$GeoRegionImplFromJson(Map<String, dynamic> json) =>
    _$GeoRegionImpl(
      id: (json['id'] as num?)?.toInt(),
      code: json['code'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      createdBy: (json['createdBy'] as num?)?.toInt(),
      updatedBy: (json['updatedBy'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'],
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$GeoRegionImplToJson(_$GeoRegionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'createdBy': instance.createdBy,
      'updatedBy': instance.updatedBy,
      'name': instance.name,
      'description': instance.description,
      'status': instance.status,
    };
