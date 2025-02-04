// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../app_setting_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AppSettingModelImplAdapter extends TypeAdapter<_$AppSettingModelImpl> {
  @override
  final int typeId = 0;

  @override
  _$AppSettingModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$AppSettingModelImpl(
      languageCode: fields[0] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$AppSettingModelImpl obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.languageCode);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppSettingModelImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppSettingModelImpl _$$AppSettingModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AppSettingModelImpl(
      languageCode: json['languageCode'] as String?,
    );

Map<String, dynamic> _$$AppSettingModelImplToJson(
        _$AppSettingModelImpl instance) =>
    <String, dynamic>{
      'languageCode': instance.languageCode,
    };
