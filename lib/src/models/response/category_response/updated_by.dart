import 'package:freezed_annotation/freezed_annotation.dart';

part 'gen/updated_by.freezed.dart';

part 'gen/updated_by.g.dart';

@freezed
class UpdatedBy with _$UpdatedBy {
  factory UpdatedBy({
    int? id,
    String? code,
    String? phone,
    dynamic email,
    dynamic positionId,
    dynamic geoRegionId,
    dynamic departmentId,
    String? status,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? createdBy,
    int? updatedBy,
    String? access,
    String? otherPhone,
    dynamic remark,
    int? isAllowedLogin,
    int? isResetPassword,
    DateTime? issuedAt,
    @JsonKey(name: 'IDCard') dynamic idCard,
    int? geoCityId,
    int? geoDistrictId,
    int? geoCommuneId,
    int? geoVillageId,
    String? fullName,
    dynamic fullNameKm,
    String? gender,
    dynamic birthday,
    dynamic address,
    dynamic profileUrl,
    dynamic hireDate,
    dynamic deviceReceivedDate,
    int? stopWorked,
  }) = _UpdatedBy;

  factory UpdatedBy.fromJson(Map<String, dynamic> json) =>
      _$UpdatedByFromJson(json);
}
