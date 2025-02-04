// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      id: (json['id'] as num?)?.toInt(),
      code: json['code'] as String?,
      name: json['name'] as String?,
      displayName: json['displayName'] as String?,
      unitType: json['unitType'] as String?,
      productId: (json['productId'] as num?)?.toInt(),
      locale: json['locale'] == null
          ? null
          : Locale.fromJson(json['locale'] as Map<String, dynamic>),
      locales: json['locales'] == null
          ? null
          : Locales.fromJson(json['locales'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'name': instance.name,
      'displayName': instance.displayName,
      'unitType': instance.unitType,
      'productId': instance.productId,
      'locale': instance.locale?.toJson(),
      'locales': instance.locales?.toJson(),
    };
