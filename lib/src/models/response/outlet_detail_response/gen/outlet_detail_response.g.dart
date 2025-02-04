// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../outlet_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OutletDetailResponseImpl _$$OutletDetailResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$OutletDetailResponseImpl(
      id: (json['id'] as num?)?.toInt(),
      code: json['code'] as String?,
      phone: json['phone'] as String?,
      email: json['email'],
      name: json['name'] as String?,
      type: json['type'] as String?,
      secondaryType: json['secondaryType'],
      status: json['status'] as String?,
      address: json['address'] as String?,
      geoRegionId: (json['geoRegionId'] as num?)?.toInt(),
      geoCityId: (json['geoCityId'] as num?)?.toInt(),
      geoDistrictId: (json['geoDistrictId'] as num?)?.toInt(),
      geoCommuneId: (json['geoCommuneId'] as num?)?.toInt(),
      geoVillageId: (json['geoVillageId'] as num?)?.toInt(),
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      logo: json['logo'] as String?,
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      otherPhone: json['otherPhone'] as String?,
      firmPriceGroupId: (json['firmPriceGroupId'] as num?)?.toInt(),
      channelClassificationId:
          (json['channelClassificationId'] as num?)?.toInt(),
      segmentClassificationId:
          (json['segmentClassificationId'] as num?)?.toInt(),
      typeClassificationId: (json['typeClassificationId'] as num?)?.toInt(),
      volumeClassificationId: (json['volumeClassificationId'] as num?)?.toInt(),
      remark: json['remark'] as String?,
      paymentMethod: json['paymentMethod'] as String?,
      approve: json['approve'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      owner: json['owner'] == null
          ? null
          : Owner.fromJson(json['owner'] as Map<String, dynamic>),
      sapCustomer: json['sapCustomer'],
      firmRegions: json['firmRegions'] as List<dynamic>?,
      locales: json['locales'] == null
          ? null
          : Locales.fromJson(json['locales'] as Map<String, dynamic>),
      firmPriceGroup: json['firmPriceGroup'] == null
          ? null
          : FirmPriceGroup.fromJson(
              json['firmPriceGroup'] as Map<String, dynamic>),
      firmGroup: json['firmGroup'],
      geoRegion: json['geoRegion'] == null
          ? null
          : GeoRegion.fromJson(json['geoRegion'] as Map<String, dynamic>),
      geoCity: json['geoCity'] == null
          ? null
          : GeoCity.fromJson(json['geoCity'] as Map<String, dynamic>),
      geoDistrict: json['geoDistrict'] == null
          ? null
          : GeoDistrict.fromJson(json['geoDistrict'] as Map<String, dynamic>),
      geoCommune: json['geoCommune'] == null
          ? null
          : GeoCommune.fromJson(json['geoCommune'] as Map<String, dynamic>),
      geoVillage: json['geoVillage'] == null
          ? null
          : GeoVillage.fromJson(json['geoVillage'] as Map<String, dynamic>),
      typeClassification: json['typeClassification'] == null
          ? null
          : TypeClassification.fromJson(
              json['typeClassification'] as Map<String, dynamic>),
      volumeClassification: json['volumeClassification'] == null
          ? null
          : VolumeClassification.fromJson(
              json['volumeClassification'] as Map<String, dynamic>),
      channelClassification: json['channelClassification'] == null
          ? null
          : ChannelClassification.fromJson(
              json['channelClassification'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OutletDetailResponseImplToJson(
        _$OutletDetailResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'phone': instance.phone,
      'email': instance.email,
      'name': instance.name,
      'type': instance.type,
      'secondaryType': instance.secondaryType,
      'status': instance.status,
      'address': instance.address,
      'geoRegionId': instance.geoRegionId,
      'geoCityId': instance.geoCityId,
      'geoDistrictId': instance.geoDistrictId,
      'geoCommuneId': instance.geoCommuneId,
      'geoVillageId': instance.geoVillageId,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'logo': instance.logo,
      'location': instance.location?.toJson(),
      'otherPhone': instance.otherPhone,
      'firmPriceGroupId': instance.firmPriceGroupId,
      'channelClassificationId': instance.channelClassificationId,
      'segmentClassificationId': instance.segmentClassificationId,
      'typeClassificationId': instance.typeClassificationId,
      'volumeClassificationId': instance.volumeClassificationId,
      'remark': instance.remark,
      'paymentMethod': instance.paymentMethod,
      'approve': instance.approve,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'owner': instance.owner?.toJson(),
      'sapCustomer': instance.sapCustomer,
      'firmRegions': instance.firmRegions,
      'locales': instance.locales?.toJson(),
      'firmPriceGroup': instance.firmPriceGroup?.toJson(),
      'firmGroup': instance.firmGroup,
      'geoRegion': instance.geoRegion?.toJson(),
      'geoCity': instance.geoCity?.toJson(),
      'geoDistrict': instance.geoDistrict?.toJson(),
      'geoCommune': instance.geoCommune?.toJson(),
      'geoVillage': instance.geoVillage?.toJson(),
      'typeClassification': instance.typeClassification?.toJson(),
      'volumeClassification': instance.volumeClassification?.toJson(),
      'channelClassification': instance.channelClassification?.toJson(),
    };
