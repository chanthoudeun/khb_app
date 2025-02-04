// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../volume_classification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VolumeClassificationImpl _$$VolumeClassificationImplFromJson(
        Map<String, dynamic> json) =>
    _$VolumeClassificationImpl(
      id: (json['id'] as num?)?.toInt(),
      code: json['code'] as String?,
      classificationId: (json['classificationId'] as num?)?.toInt(),
      locale: json['locale'] == null
          ? null
          : Locale.fromJson(json['locale'] as Map<String, dynamic>),
      locales: json['locales'] == null
          ? null
          : Locales.fromJson(json['locales'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VolumeClassificationImplToJson(
        _$VolumeClassificationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'classificationId': instance.classificationId,
      'locale': instance.locale?.toJson(),
      'locales': instance.locales?.toJson(),
    };
