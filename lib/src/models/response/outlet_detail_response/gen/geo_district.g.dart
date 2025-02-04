// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../geo_district.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GeoDistrictImpl _$$GeoDistrictImplFromJson(Map<String, dynamic> json) =>
    _$GeoDistrictImpl(
      id: (json['id'] as num?)?.toInt(),
      code: json['code'] as String?,
      geoDistrictId: (json['geoDistrictId'] as num?)?.toInt(),
      locale: json['locale'] == null
          ? null
          : Locale.fromJson(json['locale'] as Map<String, dynamic>),
      locales: json['locales'] == null
          ? null
          : Locales.fromJson(json['locales'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GeoDistrictImplToJson(_$GeoDistrictImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'geoDistrictId': instance.geoDistrictId,
      'locale': instance.locale?.toJson(),
      'locales': instance.locales?.toJson(),
    };
