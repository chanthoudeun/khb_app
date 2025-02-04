// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../geo_commune.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GeoCommuneImpl _$$GeoCommuneImplFromJson(Map<String, dynamic> json) =>
    _$GeoCommuneImpl(
      id: (json['id'] as num?)?.toInt(),
      code: json['code'] as String?,
      geoCommuneId: (json['geoCommuneId'] as num?)?.toInt(),
      locale: json['locale'] == null
          ? null
          : Locale.fromJson(json['locale'] as Map<String, dynamic>),
      locales: json['locales'] == null
          ? null
          : Locales.fromJson(json['locales'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GeoCommuneImplToJson(_$GeoCommuneImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'geoCommuneId': instance.geoCommuneId,
      'locale': instance.locale?.toJson(),
      'locales': instance.locales?.toJson(),
    };
