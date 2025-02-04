// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../promotion_locale.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PromotionLocaleImpl _$$PromotionLocaleImplFromJson(
        Map<String, dynamic> json) =>
    _$PromotionLocaleImpl(
      id: (json['id'] as num?)?.toInt(),
      code: json['code'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      type: json['type'] as String?,
      promotionId: (json['promotion_id'] as num?)?.toInt(),
      locale: json['locale'] == null
          ? null
          : Locale.fromJson(json['locale'] as Map<String, dynamic>),
      locales: json['locales'] == null
          ? null
          : Locales.fromJson(json['locales'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PromotionLocaleImplToJson(
        _$PromotionLocaleImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'name': instance.name,
      'description': instance.description,
      'type': instance.type,
      'promotion_id': instance.promotionId,
      'locale': instance.locale?.toJson(),
      'locales': instance.locales?.toJson(),
    };
