// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../locales.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocalesImpl _$$LocalesImplFromJson(Map<String, dynamic> json) =>
    _$LocalesImpl(
      firmOwnerId: (json['firmOwnerId'] as num?)?.toInt(),
      locale: json['locale'] == null
          ? null
          : Locale.fromJson(json['locale'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LocalesImplToJson(_$LocalesImpl instance) =>
    <String, dynamic>{
      'firmOwnerId': instance.firmOwnerId,
      'locale': instance.locale?.toJson(),
    };
