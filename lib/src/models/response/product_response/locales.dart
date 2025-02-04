import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import 'locale.dart';

part 'gen/locales.freezed.dart';

part 'gen/locales.g.dart';

@unfreezed
class Locales with _$Locales {
  @HiveType(typeId: 7)
  @JsonSerializable(fieldRename: FieldRename.none)
  factory Locales({
    @HiveField(0) Locale? locale,
  }) = _Locales;

  factory Locales.fromJson(Map<String, dynamic> json) =>
      _$LocalesFromJson(json);
}
