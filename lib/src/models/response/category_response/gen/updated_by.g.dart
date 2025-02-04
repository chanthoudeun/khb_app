// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../updated_by.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdatedByImpl _$$UpdatedByImplFromJson(Map<String, dynamic> json) =>
    _$UpdatedByImpl(
      id: (json['id'] as num?)?.toInt(),
      code: json['code'] as String?,
      phone: json['phone'] as String?,
      email: json['email'],
      positionId: json['position_id'],
      geoRegionId: json['geo_region_id'],
      departmentId: json['department_id'],
      status: json['status'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      createdBy: (json['created_by'] as num?)?.toInt(),
      updatedBy: (json['updated_by'] as num?)?.toInt(),
      access: json['access'] as String?,
      otherPhone: json['other_phone'] as String?,
      remark: json['remark'],
      isAllowedLogin: (json['is_allowed_login'] as num?)?.toInt(),
      isResetPassword: (json['is_reset_password'] as num?)?.toInt(),
      issuedAt: json['issued_at'] == null
          ? null
          : DateTime.parse(json['issued_at'] as String),
      idCard: json['IDCard'],
      geoCityId: (json['geo_city_id'] as num?)?.toInt(),
      geoDistrictId: (json['geo_district_id'] as num?)?.toInt(),
      geoCommuneId: (json['geo_commune_id'] as num?)?.toInt(),
      geoVillageId: (json['geo_village_id'] as num?)?.toInt(),
      fullName: json['full_name'] as String?,
      fullNameKm: json['full_name_km'],
      gender: json['gender'] as String?,
      birthday: json['birthday'],
      address: json['address'],
      profileUrl: json['profile_url'],
      hireDate: json['hire_date'],
      deviceReceivedDate: json['device_received_date'],
      stopWorked: (json['stop_worked'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$UpdatedByImplToJson(_$UpdatedByImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'phone': instance.phone,
      'email': instance.email,
      'position_id': instance.positionId,
      'geo_region_id': instance.geoRegionId,
      'department_id': instance.departmentId,
      'status': instance.status,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'created_by': instance.createdBy,
      'updated_by': instance.updatedBy,
      'access': instance.access,
      'other_phone': instance.otherPhone,
      'remark': instance.remark,
      'is_allowed_login': instance.isAllowedLogin,
      'is_reset_password': instance.isResetPassword,
      'issued_at': instance.issuedAt?.toIso8601String(),
      'IDCard': instance.idCard,
      'geo_city_id': instance.geoCityId,
      'geo_district_id': instance.geoDistrictId,
      'geo_commune_id': instance.geoCommuneId,
      'geo_village_id': instance.geoVillageId,
      'full_name': instance.fullName,
      'full_name_km': instance.fullNameKm,
      'gender': instance.gender,
      'birthday': instance.birthday,
      'address': instance.address,
      'profile_url': instance.profileUrl,
      'hire_date': instance.hireDate,
      'device_received_date': instance.deviceReceivedDate,
      'stop_worked': instance.stopWorked,
    };
