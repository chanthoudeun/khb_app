import 'package:freezed_annotation/freezed_annotation.dart';

import 'locale.dart';
import 'locales.dart';

part 'gen/channel_classification.freezed.dart';

part 'gen/channel_classification.g.dart';

@unfreezed
class ChannelClassification with _$ChannelClassification {
  @JsonSerializable(fieldRename: FieldRename.none)
  factory ChannelClassification({
    int? id,
    String? code,
    int? classificationId,
    Locale? locale,
    Locales? locales,
  }) = _ChannelClassification;

  factory ChannelClassification.fromJson(Map<String, dynamic> json) =>
      _$ChannelClassificationFromJson(json);
}
