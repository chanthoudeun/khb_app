import 'package:freezed_annotation/freezed_annotation.dart';

import 'locale.dart';

part 'gen/locales.freezed.dart';

part 'gen/locales.g.dart';

@unfreezed
class Locales with _$Locales {
  @JsonSerializable(fieldRename: FieldRename.none)
  factory Locales({
    int? firmOwnerId,
    Locale? locale,
  }) = _Locales;

  factory Locales.fromJson(Map<String, dynamic> json) =>
      _$LocalesFromJson(json);
}
