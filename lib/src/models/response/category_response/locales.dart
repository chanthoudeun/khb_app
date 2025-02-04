import 'package:freezed_annotation/freezed_annotation.dart';

import 'locale.dart';

part 'gen/locales.freezed.dart';

part 'gen/locales.g.dart';

@freezed
class Locales with _$Locales {
  factory Locales({
    int? productTreeId,
    Locale? locale,
  }) = _Locales;

  factory Locales.fromJson(Map<String, dynamic> json) =>
      _$LocalesFromJson(json);
}
