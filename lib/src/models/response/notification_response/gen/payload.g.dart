// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PayloadImpl _$$PayloadImplFromJson(Map<String, dynamic> json) =>
    _$PayloadImpl(
      locales: json['locales'] == null
          ? null
          : Locales.fromJson(json['locales'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PayloadImplToJson(_$PayloadImpl instance) =>
    <String, dynamic>{
      'locales': instance.locales?.toJson(),
    };
