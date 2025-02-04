// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../owner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OwnerImpl _$$OwnerImplFromJson(Map<String, dynamic> json) => _$OwnerImpl(
      id: (json['id'] as num?)?.toInt(),
      code: json['code'] as String?,
      idCard: json['IDCard'],
      gender: json['gender'] as String?,
      email: json['email'],
      phone: json['phone'] as String?,
      otherPhone: json['otherPhone'] as String?,
      name: json['name'] as String?,
      locales: json['locales'] == null
          ? null
          : Locales.fromJson(json['locales'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OwnerImplToJson(_$OwnerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'IDCard': instance.idCard,
      'gender': instance.gender,
      'email': instance.email,
      'phone': instance.phone,
      'otherPhone': instance.otherPhone,
      'name': instance.name,
      'locales': instance.locales?.toJson(),
    };
