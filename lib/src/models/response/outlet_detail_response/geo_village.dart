import 'package:freezed_annotation/freezed_annotation.dart';

import 'locale.dart';
import 'locales.dart';

part 'gen/geo_village.freezed.dart';

part 'gen/geo_village.g.dart';

@unfreezed
class GeoVillage with _$GeoVillage {
  @JsonSerializable(fieldRename: FieldRename.none)
  factory GeoVillage({
    int? id,
    String? code,
    int? geoVillageId,
    Locale? locale,
    Locales? locales,
  }) = _GeoVillage;

  factory GeoVillage.fromJson(Map<String, dynamic> json) =>
      _$GeoVillageFromJson(json);
}
