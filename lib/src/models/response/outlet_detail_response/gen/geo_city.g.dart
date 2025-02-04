// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../geo_city.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GeoCityImpl _$$GeoCityImplFromJson(Map<String, dynamic> json) =>
    _$GeoCityImpl(
      id: (json['id'] as num?)?.toInt(),
      code: json['code'] as String?,
      geoCityId: (json['geoCityId'] as num?)?.toInt(),
      locale: json['locale'] == null
          ? null
          : Locale.fromJson(json['locale'] as Map<String, dynamic>),
      locales: json['locales'] == null
          ? null
          : Locales.fromJson(json['locales'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GeoCityImplToJson(_$GeoCityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'geoCityId': instance.geoCityId,
      'locale': instance.locale?.toJson(),
      'locales': instance.locales?.toJson(),
    };
