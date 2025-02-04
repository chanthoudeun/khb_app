import 'package:freezed_annotation/freezed_annotation.dart';

import 'locale.dart';
import 'locales.dart';

part 'gen/volume_classification.freezed.dart';

part 'gen/volume_classification.g.dart';

@unfreezed
class VolumeClassification with _$VolumeClassification {
  @JsonSerializable(fieldRename: FieldRename.none)
  factory VolumeClassification({
    int? id,
    String? code,
    int? classificationId,
    Locale? locale,
    Locales? locales,
  }) = _VolumeClassification;

  factory VolumeClassification.fromJson(Map<String, dynamic> json) =>
      _$VolumeClassificationFromJson(json);
}
