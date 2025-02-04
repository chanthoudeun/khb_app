import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'gen/employee_firm.freezed.dart';

part 'gen/employee_firm.g.dart';

@unfreezed
class EmployeeFirm with _$EmployeeFirm {
  @HiveType(typeId: 8)
  @JsonSerializable(fieldRename: FieldRename.none)
  factory EmployeeFirm({
    @HiveField(0) int? outletId,
    @HiveField(1) int? dealerId,
    @HiveField(2) int? employeeId,
    @HiveField(3) String? days,
    @HiveField(4) String? effectedAt,
    @HiveField(5) String? frequency,
    @HiveField(6) int? multiply,
    @HiveField(7) String? status,
    @HiveField(8) DateTime? updatedAt,
    @HiveField(9) DateTime? createdAt,
    @HiveField(10) int? updatedBy,
    @HiveField(11) int? createdBy,
  }) = _EmployeeFirm;

  factory EmployeeFirm.fromJson(Map<String, dynamic> json) =>
      _$EmployeeFirmFromJson(json);
}
