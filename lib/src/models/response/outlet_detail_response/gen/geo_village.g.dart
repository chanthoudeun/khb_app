// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../geo_village.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GeoVillageImpl _$$GeoVillageImplFromJson(Map<String, dynamic> json) =>
    _$GeoVillageImpl(
      id: (json['id'] as num?)?.toInt(),
      code: json['code'] as String?,
      geoVillageId: (json['geoVillageId'] as num?)?.toInt(),
      locale: json['locale'] == null
          ? null
          : Locale.fromJson(json['locale'] as Map<String, dynamic>),
      locales: json['locales'] == null
          ? null
          : Locales.fromJson(json['locales'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GeoVillageImplToJson(_$GeoVillageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'geoVillageId': instance.geoVillageId,
      'locale': instance.locale?.toJson(),
      'locales': instance.locales?.toJson(),
    };
