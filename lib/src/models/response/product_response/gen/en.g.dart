// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../en.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class EnImplAdapter extends TypeAdapter<_$EnImpl> {
  @override
  final int typeId = 4;

  @override
  _$EnImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$EnImpl(
      name: fields[0] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$EnImpl obj) {
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
      other is EnImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EnImpl _$$EnImplFromJson(Map<String, dynamic> json) => _$EnImpl(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$EnImplToJson(_$EnImpl instance) => <String, dynamic>{
      'name': instance.name,
    };
