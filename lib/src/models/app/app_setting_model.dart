import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'gen/app_setting_model.freezed.dart';
part 'gen/app_setting_model.g.dart';

@unfreezed
class AppSettingModel with _$AppSettingModel {
  const AppSettingModel._();

  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.none)
  @HiveType(typeId: 0) // HiveType annotation to generate the adapter
  factory AppSettingModel({
    @HiveField(0) String? languageCode,
  }) = _AppSettingModel;

  factory AppSettingModel.fromJson(Map<String, dynamic> json) =>
      _$AppSettingModelFromJson(json);
}
