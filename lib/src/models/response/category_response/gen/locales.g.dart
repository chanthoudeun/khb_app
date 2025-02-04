// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../locales.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocalesImpl _$$LocalesImplFromJson(Map<String, dynamic> json) =>
    _$LocalesImpl(
      productTreeId: (json['product_tree_id'] as num?)?.toInt(),
      locale: json['locale'] == null
          ? null
          : Locale.fromJson(json['locale'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LocalesImplToJson(_$LocalesImpl instance) =>
    <String, dynamic>{
      'product_tree_id': instance.productTreeId,
      'locale': instance.locale?.toJson(),
    };
