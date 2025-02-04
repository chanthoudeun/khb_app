import 'package:freezed_annotation/freezed_annotation.dart';

import 'locale.dart';
import 'locales.dart';

part 'gen/type_classification.freezed.dart';

part 'gen/type_classification.g.dart';

@unfreezed
class TypeClassification with _$TypeClassification {
  @JsonSerializable(fieldRename: FieldRename.none)
  factory TypeClassification({
    int? id,
    String? code,
    int? parentId,
    int? classificationTypeId,
    String? name,
    String? description,
    dynamic imageUrl,
    String? status,
    int? createdBy,
    int? updatedBy,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? classificationId,
    Locale? locale,
    Locales? locales,
  }) = _TypeClassification;

  factory TypeClassification.fromJson(Map<String, dynamic> json) =>
      _$TypeClassificationFromJson(json);
}
