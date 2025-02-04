import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'gen/dealer_detail.freezed.dart';

part 'gen/dealer_detail.g.dart';

@freezed
class DealerDetail with _$DealerDetail {
  @HiveType(typeId: 9)
  @JsonSerializable(fieldRename: FieldRename.none)
  factory DealerDetail({
    @HiveField(0) int? id,
    @HiveField(1) String? code,
    @HiveField(2) String? phone,
    @HiveField(3) String? email,
    @HiveField(4) String? name,
  }) = _DealerDetail;

  factory DealerDetail.fromJson(Map<String, dynamic> json) =>
      _$DealerDetailFromJson(json);
}
