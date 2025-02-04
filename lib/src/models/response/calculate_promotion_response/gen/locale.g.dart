// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../locale.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocaleImpl _$$LocaleImplFromJson(Map<String, dynamic> json) => _$LocaleImpl(
      km: json['km'] == null
          ? null
          : Km.fromJson(json['km'] as Map<String, dynamic>),
      en: json['en'] == null
          ? null
          : En.fromJson(json['en'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LocaleImplToJson(_$LocaleImpl instance) =>
    <String, dynamic>{
      'km': instance.km?.toJson(),
      'en': instance.en?.toJson(),
    };
