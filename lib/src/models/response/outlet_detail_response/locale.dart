import 'package:freezed_annotation/freezed_annotation.dart';

import 'en.dart';
import 'km.dart';

part 'gen/locale.freezed.dart';

part 'gen/locale.g.dart';

@unfreezed
class Locale with _$Locale {
  @JsonSerializable(fieldRename: FieldRename.none)
  factory Locale({
    Km? km,
    En? en,
  }) = _Locale;

  factory Locale.fromJson(Map<String, dynamic> json) => _$LocaleFromJson(json);
}
