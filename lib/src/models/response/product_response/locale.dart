import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import 'en.dart';
import 'km.dart';

part 'gen/locale.freezed.dart';

part 'gen/locale.g.dart';

@unfreezed
class Locale with _$Locale {
  @HiveType(typeId: 6)
  @JsonSerializable(fieldRename: FieldRename.none)
  factory Locale({
    @HiveField(0) Km? km,
    @HiveField(1) En? en,
  }) = _Locale;

  factory Locale.fromJson(Map<String, dynamic> json) => _$LocaleFromJson(json);
}
