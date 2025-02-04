import 'package:freezed_annotation/freezed_annotation.dart';

part 'gen/firm_price_group.freezed.dart';

part 'gen/firm_price_group.g.dart';

@unfreezed
class FirmPriceGroup with _$FirmPriceGroup {
  @JsonSerializable(fieldRename: FieldRename.none)
  factory FirmPriceGroup({
    int? id,
    String? code,
    String? name,
    String? description,
    int? totalFirm,
    String? type,
    String? status,
    int? createdBy,
    int? updatedBy,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _FirmPriceGroup;

  factory FirmPriceGroup.fromJson(Map<String, dynamic> json) =>
      _$FirmPriceGroupFromJson(json);
}
