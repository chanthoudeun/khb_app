import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import 'dealer_detail.dart';
import 'employee_firm.dart';

part 'gen/user.freezed.dart';

part 'gen/user.g.dart';

@unfreezed
class User with _$User {
  @HiveType(typeId: 2)
  @JsonSerializable(fieldRename: FieldRename.none)
  factory User({
    @HiveField(0) int? id,
    @HiveField(1) String? code,
    @HiveField(2) String? phone,
    @HiveField(3) String? email,
    @HiveField(4) String? status,
    @HiveField(5) dynamic positionId,
    @HiveField(6) dynamic geoRegionId,
    @HiveField(7) dynamic departmentId,
    @HiveField(8) int? isAllowedLogin,
    @HiveField(9) int? isResetPassword,
    @HiveField(10) DateTime? issuedAt,
    @HiveField(11) String? otherPhone,
    @HiveField(12) String? remark,
    @HiveField(13) DateTime? lastChangedPasswordAt,
    @HiveField(14) DateTime? createdAt,
    @HiveField(15) DateTime? updatedAt,
    @HiveField(16) int? createdBy,
    @HiveField(17) int? updatedBy,
    @HiveField(18) String? access,
    @HiveField(19) String? fullName,
    @HiveField(20) dynamic fullNameKm,
    @HiveField(21) String? gender,
    @HiveField(22) dynamic address,
    @HiveField(23) dynamic birthday,
    @HiveField(24) @JsonKey(name: 'IDCard') dynamic idCard,
    @HiveField(25) int? geoCityId,
    @HiveField(26) int? geoDistrictId,
    @HiveField(27) int? geoCommuneId,
    @HiveField(28) int? geoVillageId,
    @HiveField(29) dynamic bankId,
    @HiveField(30) dynamic bankAccount,
    @HiveField(31) String? profileUrl,
    @HiveField(32) dynamic hireDate,
    @HiveField(33) dynamic deviceReceivedDate,
    @HiveField(34) int? stopWorked,
    @HiveField(36) dynamic dealer,
    @HiveField(37) List<dynamic>? dealers,
    @HiveField(38) List<String>? permissions,
    @HiveField(39) EmployeeFirm? employeeFirm,
    @HiveField(40) String? locale,
    @HiveField(41) DealerDetail? dealerDetail,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
