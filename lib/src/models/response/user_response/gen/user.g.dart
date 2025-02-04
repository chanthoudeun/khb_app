// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../user.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserImplAdapter extends TypeAdapter<_$UserImpl> {
  @override
  final int typeId = 2;

  @override
  _$UserImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$UserImpl(
      id: fields[0] as int?,
      code: fields[1] as String?,
      phone: fields[2] as String?,
      email: fields[3] as String?,
      status: fields[4] as String?,
      positionId: fields[5] as dynamic,
      geoRegionId: fields[6] as dynamic,
      departmentId: fields[7] as dynamic,
      isAllowedLogin: fields[8] as int?,
      isResetPassword: fields[9] as int?,
      issuedAt: fields[10] as DateTime?,
      otherPhone: fields[11] as String?,
      remark: fields[12] as String?,
      lastChangedPasswordAt: fields[13] as DateTime?,
      createdAt: fields[14] as DateTime?,
      updatedAt: fields[15] as DateTime?,
      createdBy: fields[16] as int?,
      updatedBy: fields[17] as int?,
      access: fields[18] as String?,
      fullName: fields[19] as String?,
      fullNameKm: fields[20] as dynamic,
      gender: fields[21] as String?,
      address: fields[22] as dynamic,
      birthday: fields[23] as dynamic,
      idCard: fields[24] as dynamic,
      geoCityId: fields[25] as int?,
      geoDistrictId: fields[26] as int?,
      geoCommuneId: fields[27] as int?,
      geoVillageId: fields[28] as int?,
      bankId: fields[29] as dynamic,
      bankAccount: fields[30] as dynamic,
      profileUrl: fields[31] as String?,
      hireDate: fields[32] as dynamic,
      deviceReceivedDate: fields[33] as dynamic,
      stopWorked: fields[34] as int?,
      dealer: fields[36] as dynamic,
      dealers: (fields[37] as List?)?.cast<dynamic>(),
      permissions: (fields[38] as List?)?.cast<String>(),
      employeeFirm: fields[39] as EmployeeFirm?,
      locale: fields[40] as String?,
      dealerDetail: fields[41] as DealerDetail?,
    );
  }

  @override
  void write(BinaryWriter writer, _$UserImpl obj) {
    writer
      ..writeByte(41)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.code)
      ..writeByte(2)
      ..write(obj.phone)
      ..writeByte(3)
      ..write(obj.email)
      ..writeByte(4)
      ..write(obj.status)
      ..writeByte(5)
      ..write(obj.positionId)
      ..writeByte(6)
      ..write(obj.geoRegionId)
      ..writeByte(7)
      ..write(obj.departmentId)
      ..writeByte(8)
      ..write(obj.isAllowedLogin)
      ..writeByte(9)
      ..write(obj.isResetPassword)
      ..writeByte(10)
      ..write(obj.issuedAt)
      ..writeByte(11)
      ..write(obj.otherPhone)
      ..writeByte(12)
      ..write(obj.remark)
      ..writeByte(13)
      ..write(obj.lastChangedPasswordAt)
      ..writeByte(14)
      ..write(obj.createdAt)
      ..writeByte(15)
      ..write(obj.updatedAt)
      ..writeByte(16)
      ..write(obj.createdBy)
      ..writeByte(17)
      ..write(obj.updatedBy)
      ..writeByte(18)
      ..write(obj.access)
      ..writeByte(19)
      ..write(obj.fullName)
      ..writeByte(20)
      ..write(obj.fullNameKm)
      ..writeByte(21)
      ..write(obj.gender)
      ..writeByte(22)
      ..write(obj.address)
      ..writeByte(23)
      ..write(obj.birthday)
      ..writeByte(24)
      ..write(obj.idCard)
      ..writeByte(25)
      ..write(obj.geoCityId)
      ..writeByte(26)
      ..write(obj.geoDistrictId)
      ..writeByte(27)
      ..write(obj.geoCommuneId)
      ..writeByte(28)
      ..write(obj.geoVillageId)
      ..writeByte(29)
      ..write(obj.bankId)
      ..writeByte(30)
      ..write(obj.bankAccount)
      ..writeByte(31)
      ..write(obj.profileUrl)
      ..writeByte(32)
      ..write(obj.hireDate)
      ..writeByte(33)
      ..write(obj.deviceReceivedDate)
      ..writeByte(34)
      ..write(obj.stopWorked)
      ..writeByte(36)
      ..write(obj.dealer)
      ..writeByte(37)
      ..write(obj.dealers)
      ..writeByte(38)
      ..write(obj.permissions)
      ..writeByte(39)
      ..write(obj.employeeFirm)
      ..writeByte(40)
      ..write(obj.locale)
      ..writeByte(41)
      ..write(obj.dealerDetail);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: (json['id'] as num?)?.toInt(),
      code: json['code'] as String?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      status: json['status'] as String?,
      positionId: json['positionId'],
      geoRegionId: json['geoRegionId'],
      departmentId: json['departmentId'],
      isAllowedLogin: (json['isAllowedLogin'] as num?)?.toInt(),
      isResetPassword: (json['isResetPassword'] as num?)?.toInt(),
      issuedAt: json['issuedAt'] == null
          ? null
          : DateTime.parse(json['issuedAt'] as String),
      otherPhone: json['otherPhone'] as String?,
      remark: json['remark'] as String?,
      lastChangedPasswordAt: json['lastChangedPasswordAt'] == null
          ? null
          : DateTime.parse(json['lastChangedPasswordAt'] as String),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      createdBy: (json['createdBy'] as num?)?.toInt(),
      updatedBy: (json['updatedBy'] as num?)?.toInt(),
      access: json['access'] as String?,
      fullName: json['fullName'] as String?,
      fullNameKm: json['fullNameKm'],
      gender: json['gender'] as String?,
      address: json['address'],
      birthday: json['birthday'],
      idCard: json['IDCard'],
      geoCityId: (json['geoCityId'] as num?)?.toInt(),
      geoDistrictId: (json['geoDistrictId'] as num?)?.toInt(),
      geoCommuneId: (json['geoCommuneId'] as num?)?.toInt(),
      geoVillageId: (json['geoVillageId'] as num?)?.toInt(),
      bankId: json['bankId'],
      bankAccount: json['bankAccount'],
      profileUrl: json['profileUrl'] as String?,
      hireDate: json['hireDate'],
      deviceReceivedDate: json['deviceReceivedDate'],
      stopWorked: (json['stopWorked'] as num?)?.toInt(),
      dealer: json['dealer'],
      dealers: json['dealers'] as List<dynamic>?,
      permissions: (json['permissions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      employeeFirm: json['employeeFirm'] == null
          ? null
          : EmployeeFirm.fromJson(json['employeeFirm'] as Map<String, dynamic>),
      locale: json['locale'] as String?,
      dealerDetail: json['dealerDetail'] == null
          ? null
          : DealerDetail.fromJson(json['dealerDetail'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'phone': instance.phone,
      'email': instance.email,
      'status': instance.status,
      'positionId': instance.positionId,
      'geoRegionId': instance.geoRegionId,
      'departmentId': instance.departmentId,
      'isAllowedLogin': instance.isAllowedLogin,
      'isResetPassword': instance.isResetPassword,
      'issuedAt': instance.issuedAt?.toIso8601String(),
      'otherPhone': instance.otherPhone,
      'remark': instance.remark,
      'lastChangedPasswordAt':
          instance.lastChangedPasswordAt?.toIso8601String(),
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'createdBy': instance.createdBy,
      'updatedBy': instance.updatedBy,
      'access': instance.access,
      'fullName': instance.fullName,
      'fullNameKm': instance.fullNameKm,
      'gender': instance.gender,
      'address': instance.address,
      'birthday': instance.birthday,
      'IDCard': instance.idCard,
      'geoCityId': instance.geoCityId,
      'geoDistrictId': instance.geoDistrictId,
      'geoCommuneId': instance.geoCommuneId,
      'geoVillageId': instance.geoVillageId,
      'bankId': instance.bankId,
      'bankAccount': instance.bankAccount,
      'profileUrl': instance.profileUrl,
      'hireDate': instance.hireDate,
      'deviceReceivedDate': instance.deviceReceivedDate,
      'stopWorked': instance.stopWorked,
      'dealer': instance.dealer,
      'dealers': instance.dealers,
      'permissions': instance.permissions,
      'employeeFirm': instance.employeeFirm?.toJson(),
      'locale': instance.locale,
      'dealerDetail': instance.dealerDetail?.toJson(),
    };
