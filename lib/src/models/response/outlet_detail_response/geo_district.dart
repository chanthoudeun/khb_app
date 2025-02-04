import 'package:freezed_annotation/freezed_annotation.dart';

import 'locale.dart';
import 'locales.dart';

part 'gen/geo_district.freezed.dart';

part 'gen/geo_district.g.dart';

@unfreezed
class GeoDistrict with _$GeoDistrict {
  @JsonSerializable(fieldRename: FieldRename.none)
  factory GeoDistrict({
    int? id,
    String? code,
    int? geoDistrictId,
    Locale? locale,
    Locales? locales,
  }) = _GeoDistrict;

  factory GeoDistrict.fromJson(Map<String, dynamic> json) =>
      _$GeoDistrictFromJson(json);
}
