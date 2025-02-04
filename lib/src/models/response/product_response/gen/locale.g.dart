// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../locale.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LocaleImplAdapter extends TypeAdapter<_$LocaleImpl> {
  @override
  final int typeId = 6;

  @override
  _$LocaleImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$LocaleImpl(
      km: fields[0] as Km?,
      en: fields[1] as En?,
    );
  }

  @override
  void write(BinaryWriter writer, _$LocaleImpl obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.km)
      ..writeByte(1)
      ..write(obj.en);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LocaleImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocaleImpl _$$LocaleImplFromJson(Map<String, dynamic> json) => _$LocaleImpl(
      km: json['km'] == null
          ? null
          : Km.fromJson(json['km'] as Map<String, dynamic>),
      en: json['en'] == null
          ? null
          : En.fromJson(json['en'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LocaleImplToJson(_$LocaleImpl instance) =>
    <String, dynamic>{
      'km': instance.km?.toJson(),
      'en': instance.en?.toJson(),
    };
