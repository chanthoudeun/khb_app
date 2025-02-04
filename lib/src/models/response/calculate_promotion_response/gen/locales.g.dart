// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../locales.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocalesImpl _$$LocalesImplFromJson(Map<String, dynamic> json) =>
    _$LocalesImpl(
      id: (json['id'] as num?)?.toInt(),
      code: json['code'] as String?,
      productId: (json['productId'] as num?)?.toInt(),
      locale: json['locale'] == null
          ? null
          : Locale.fromJson(json['locale'] as Map<String, dynamic>),
      locales: json['locales'] == null
          ? null
          : Locales.fromJson(json['locales'] as Map<String, dynamic>),
      en: json['en'] == null
          ? null
          : En.fromJson(json['en'] as Map<String, dynamic>),
      km: json['km'] == null
          ? null
          : Km.fromJson(json['km'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LocalesImplToJson(_$LocalesImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'productId': instance.productId,
      'locale': instance.locale?.toJson(),
      'locales': instance.locales?.toJson(),
      'en': instance.en?.toJson(),
      'km': instance.km?.toJson(),
    };
