import 'package:freezed_annotation/freezed_annotation.dart';

import 'en.dart';
import 'km.dart';

part 'gen/locale.freezed.dart';

part 'gen/locale.g.dart';

@freezed
class Locale with _$Locale {
  factory Locale({
    Km? km,
    En? en,
  }) = _Locale;

  factory Locale.fromJson(Map<String, dynamic> json) => _$LocaleFromJson(json);
}
