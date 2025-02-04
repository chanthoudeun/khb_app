// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../km.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class KmImplAdapter extends TypeAdapter<_$KmImpl> {
  @override
  final int typeId = 5;

  @override
  _$KmImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$KmImpl(
      name: fields[0] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$KmImpl obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is KmImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$KmImpl _$$KmImplFromJson(Map<String, dynamic> json) => _$KmImpl(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$KmImplToJson(_$KmImpl instance) => <String, dynamic>{
      'name': instance.name,
    };
