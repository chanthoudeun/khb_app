import 'package:freezed_annotation/freezed_annotation.dart';

import 'locale.dart';
import 'locales.dart';

part 'gen/geo_commune.freezed.dart';

part 'gen/geo_commune.g.dart';

@unfreezed
class GeoCommune with _$GeoCommune {
  @JsonSerializable(fieldRename: FieldRename.none)
  factory GeoCommune({
    int? id,
    String? code,
    int? geoCommuneId,
    Locale? locale,
    Locales? locales,
  }) = _GeoCommune;

  factory GeoCommune.fromJson(Map<String, dynamic> json) =>
      _$GeoCommuneFromJson(json);
}
