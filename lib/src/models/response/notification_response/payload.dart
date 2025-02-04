import 'package:freezed_annotation/freezed_annotation.dart';

import '../calculate_promotion_response/locales.dart';

part 'gen/payload.freezed.dart';

part 'gen/payload.g.dart';

@unfreezed
class Payload with _$Payload {
  @JsonSerializable(fieldRename: FieldRename.none)
  factory Payload({
    Locales? locales,
  }) = _Payload;

  factory Payload.fromJson(Map<String, dynamic> json) =>
      _$PayloadFromJson(json);
}
