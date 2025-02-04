import 'package:freezed_annotation/freezed_annotation.dart';

import 'channel_classification.dart';
import 'firm_price_group.dart';
import 'geo_city.dart';
import 'geo_commune.dart';
import 'geo_district.dart';
import 'geo_region.dart';
import 'geo_village.dart';
import 'locales.dart';
import 'location.dart';
import 'owner.dart';
import 'type_classification.dart';
import 'volume_classification.dart';

part 'gen/outlet_detail_response.freezed.dart';

part 'gen/outlet_detail_response.g.dart';

@unfreezed
class OutletDetailResponse with _$OutletDetailResponse {
  @JsonSerializable(fieldRename: FieldRename.none)
  factory OutletDetailResponse({
    int? id,
    String? code,
    String? phone,
    dynamic email,
    String? name,
    String? type,
    dynamic secondaryType,
    String? status,
    String? address,
    int? geoRegionId,
    int? geoCityId,
    int? geoDistrictId,
    int? geoCommuneId,
    int? geoVillageId,
    String? latitude,
    String? longitude,
    String? logo,
    Location? location,
    String? otherPhone,
    int? firmPriceGroupId,
    int? channelClassificationId,
    int? segmentClassificationId,
    int? typeClassificationId,
    int? volumeClassificationId,
    String? remark,
    String? paymentMethod,
    String? approve,
    DateTime? createdAt,
    DateTime? updatedAt,
    Owner? owner,
    dynamic sapCustomer,
    List<dynamic>? firmRegions,
    Locales? locales,
    FirmPriceGroup? firmPriceGroup,
    dynamic firmGroup,
    GeoRegion? geoRegion,
    GeoCity? geoCity,
    GeoDistrict? geoDistrict,
    GeoCommune? geoCommune,
    GeoVillage? geoVillage,
    TypeClassification? typeClassification,
    VolumeClassification? volumeClassification,
    ChannelClassification? channelClassification,
  }) = _OutletDetailResponse;

  factory OutletDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$OutletDetailResponseFromJson(json);
}
