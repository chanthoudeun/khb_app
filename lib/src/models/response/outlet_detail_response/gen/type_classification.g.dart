// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../type_classification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TypeClassificationImpl _$$TypeClassificationImplFromJson(
        Map<String, dynamic> json) =>
    _$TypeClassificationImpl(
      id: (json['id'] as num?)?.toInt(),
      code: json['code'] as String?,
      parentId: (json['parentId'] as num?)?.toInt(),
      classificationTypeId: (json['classificationTypeId'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      imageUrl: json['imageUrl'],
      status: json['status'] as String?,
      createdBy: (json['createdBy'] as num?)?.toInt(),
      updatedBy: (json['updatedBy'] as num?)?.toInt(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      classificationId: (json['classificationId'] as num?)?.toInt(),
      locale: json['locale'] == null
          ? null
          : Locale.fromJson(json['locale'] as Map<String, dynamic>),
      locales: json['locales'] == null
          ? null
          : Locales.fromJson(json['locales'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TypeClassificationImplToJson(
        _$TypeClassificationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'parentId': instance.parentId,
      'classificationTypeId': instance.classificationTypeId,
      'name': instance.name,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'status': instance.status,
      'createdBy': instance.createdBy,
      'updatedBy': instance.updatedBy,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'classificationId': instance.classificationId,
      'locale': instance.locale?.toJson(),
      'locales': instance.locales?.toJson(),
    };
