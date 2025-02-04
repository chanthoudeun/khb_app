// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../employee_firm.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class EmployeeFirmImplAdapter extends TypeAdapter<_$EmployeeFirmImpl> {
  @override
  final int typeId = 8;

  @override
  _$EmployeeFirmImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$EmployeeFirmImpl(
      outletId: fields[0] as int?,
      dealerId: fields[1] as int?,
      employeeId: fields[2] as int?,
      days: fields[3] as String?,
      effectedAt: fields[4] as String?,
      frequency: fields[5] as String?,
      multiply: fields[6] as int?,
      status: fields[7] as String?,
      updatedAt: fields[8] as DateTime?,
      createdAt: fields[9] as DateTime?,
      updatedBy: fields[10] as int?,
      createdBy: fields[11] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, _$EmployeeFirmImpl obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.outletId)
      ..writeByte(1)
      ..write(obj.dealerId)
      ..writeByte(2)
      ..write(obj.employeeId)
      ..writeByte(3)
      ..write(obj.days)
      ..writeByte(4)
      ..write(obj.effectedAt)
      ..writeByte(5)
      ..write(obj.frequency)
      ..writeByte(6)
      ..write(obj.multiply)
      ..writeByte(7)
      ..write(obj.status)
      ..writeByte(8)
      ..write(obj.updatedAt)
      ..writeByte(9)
      ..write(obj.createdAt)
      ..writeByte(10)
      ..write(obj.updatedBy)
      ..writeByte(11)
      ..write(obj.createdBy);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EmployeeFirmImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmployeeFirmImpl _$$EmployeeFirmImplFromJson(Map<String, dynamic> json) =>
    _$EmployeeFirmImpl(
      outletId: (json['outletId'] as num?)?.toInt(),
      dealerId: (json['dealerId'] as num?)?.toInt(),
      employeeId: (json['employeeId'] as num?)?.toInt(),
      days: json['days'] as String?,
      effectedAt: json['effectedAt'] as String?,
      frequency: json['frequency'] as String?,
      multiply: (json['multiply'] as num?)?.toInt(),
      status: json['status'] as String?,
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedBy: (json['updatedBy'] as num?)?.toInt(),
      createdBy: (json['createdBy'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$EmployeeFirmImplToJson(_$EmployeeFirmImpl instance) =>
    <String, dynamic>{
      'outletId': instance.outletId,
      'dealerId': instance.dealerId,
      'employeeId': instance.employeeId,
      'days': instance.days,
      'effectedAt': instance.effectedAt,
      'frequency': instance.frequency,
      'multiply': instance.multiply,
      'status': instance.status,
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedBy': instance.updatedBy,
      'createdBy': instance.createdBy,
    };
