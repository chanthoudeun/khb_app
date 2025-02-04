// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../dealer_detail.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DealerDetailImplAdapter extends TypeAdapter<_$DealerDetailImpl> {
  @override
  final int typeId = 9;

  @override
  _$DealerDetailImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$DealerDetailImpl(
      id: fields[0] as int?,
      code: fields[1] as String?,
      phone: fields[2] as String?,
      email: fields[3] as String?,
      name: fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$DealerDetailImpl obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.code)
      ..writeByte(2)
      ..write(obj.phone)
      ..writeByte(3)
      ..write(obj.email)
      ..writeByte(4)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DealerDetailImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DealerDetailImpl _$$DealerDetailImplFromJson(Map<String, dynamic> json) =>
    _$DealerDetailImpl(
      id: (json['id'] as num?)?.toInt(),
      code: json['code'] as String?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$DealerDetailImplToJson(_$DealerDetailImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'phone': instance.phone,
      'email': instance.email,
      'name': instance.name,
    };
