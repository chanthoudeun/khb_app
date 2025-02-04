import 'package:freezed_annotation/freezed_annotation.dart';

part 'gen/geo_region.freezed.dart';

part 'gen/geo_region.g.dart';

@unfreezed
class GeoRegion with _$GeoRegion {
  @JsonSerializable(fieldRename: FieldRename.none)
  factory GeoRegion({
    int? id,
    String? code,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? createdBy,
    int? updatedBy,
    String? name,
    dynamic description,
    String? status,
  }) = _GeoRegion;

  factory GeoRegion.fromJson(Map<String, dynamic> json) =>
      _$GeoRegionFromJson(json);
}
