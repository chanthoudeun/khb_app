import 'package:freezed_annotation/freezed_annotation.dart';

import 'locale.dart';
import 'locales.dart';

part 'gen/geo_city.freezed.dart';

part 'gen/geo_city.g.dart';

@freezed
class GeoCity with _$GeoCity {
  @JsonSerializable(fieldRename: FieldRename.none)
  factory GeoCity({
    int? id,
    String? code,
    int? geoCityId,
    Locale? locale,
    Locales? locales,
  }) = _GeoCity;

  factory GeoCity.fromJson(Map<String, dynamic> json) =>
      _$GeoCityFromJson(json);
}
