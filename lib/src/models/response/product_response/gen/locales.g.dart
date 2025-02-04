// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../locales.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LocalesImplAdapter extends TypeAdapter<_$LocalesImpl> {
  @override
  final int typeId = 7;

  @override
  _$LocalesImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$LocalesImpl(
      locale: fields[0] as Locale?,
    );
  }

  @override
  void write(BinaryWriter writer, _$LocalesImpl obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.locale);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LocalesImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocalesImpl _$$LocalesImplFromJson(Map<String, dynamic> json) =>
    _$LocalesImpl(
      locale: json['locale'] == null
          ? null
          : Locale.fromJson(json['locale'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LocalesImplToJson(_$LocalesImpl instance) =>
    <String, dynamic>{
      'locale': instance.locale?.toJson(),
    };
